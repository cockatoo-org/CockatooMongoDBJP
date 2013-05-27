<?php
namespace mongo;
require_once(\Cockatoo\Config::COCKATOO_ROOT.'action/Action.php');
/**
 * GetPageAction.php - ????
 *  
 * @package ????
 * @access public
 * @author hiroaki.kubota <hiroaki.kubota@mail.rakuten.com> 
 * @create 2011/07/07
 * @version $Id$
 * @copyright Copyright (C) 2011, rakuten 
 */

class PageAction extends \Cockatoo\Action {
  public function proc(){

    try{
      //list($P,$D,$C,$p,$m,$q,$c) = \Cockatoo\parse_brl($this->BRL);
      // 
      $this->setNamespace('mongo');
      $session = $this->getSession();

      $user  = Lib::user($session);
      $page   = $this->args['P'];
      $name   = $this->args['N'];
      // Query strings
      $op = $session[\Cockatoo\Def::SESSION_KEY_POST]['op'];
      if ( ! $op ) {
        $op = 'get';
      }
      if ( $op === 'get' ) {
        $this->updateSession(array('mongo' => $session['mongo'] ) );
        $pdata = Lib::get_page($page);
        if ( $pdata ) {
          return array( 'page' => $pdata);
        }
        $origin = '*New';
        $contents = array(array('tag' => 'h2','attr'=>array(),'children' => array(array('tag'=>'text' , 'text' => 'New'))));
        return array( 'page' =>
                      Lib::page($page,
                                $origin,
                                $contents,
                                $user));
      }elseif( $op === 'preview' ) {
        $origin   = $session[\Cockatoo\Def::SESSION_KEY_POST]['origin'];
        $lines = preg_split("@\r?\n@",$origin);
        $parser = new PageParser($page,$lines);
        return array( 'page' => 
                      Lib::page($page,
                                $origin,
                                $parser->parse(),
                                $user));
      }elseif( $op === 'save' ) {
        if ( ! Lib::isRoot($session) ) {
          throw new \Exception('You are not admin.');
        }
        $origin   = $session[\Cockatoo\Def::SESSION_KEY_POST]['origin'];
        $lines = preg_split("@\r?\n@",$origin);
        $parser = new PageParser($page,$lines);
        $pdata = Lib::page($page,
                           $origin,
                           $parser->parse(),
                           $user);
        $pdata['_owner'] = $user;
        $pdata['_ownername'] = Lib::name($session);
        $pdata['_time'] = time();
        $pdata['_timestr'] = date('Y-m-d',$pdata['_time']);
        Lib::save_page($page,$pdata);
        $this->setMovedTemporary('/mongo/'.$page);
        return array();
      }elseif( $op === 'move' ) {
        if ( ! Lib::isRoot($session) ) {
          throw new \Exception('You are not admin.');
        }
        $new = $session[\Cockatoo\Def::SESSION_KEY_POST]['new'];
        if ( $new ) {
          $pdata = Lib::get_page($page);
          if ( $pdata ) {
            $pdata['title'] = $new;
            $lines = preg_split("@\r?\n@",$pdata['origin']);
            $parser = new PageParser($page,$lines);
            $pdata['contents'] = $parser->parse();
            Lib::save_page($new,$pdata);
            $this->move_image($new,$page);
            Lib::remove_page($page);
            $this->setMovedTemporary('/mongo/'.$new);
            return array();
          }
          $this->setMovedTemporary('/mongo/main');
        }else{
          $this->setMovedTemporary('/mongo/'.$page);
        }
        return array();
      }elseif( $op === 'fupload' ) {
        $page  = \Cockatoo\path_urlencode($session[\Cockatoo\Def::SESSION_KEY_POST]['page']);
        $image = $session[\Cockatoo\Def::SESSION_KEY_POST]['filename'];
        if ( ! $image ) {
          return array('r' => False);
        }
        $fname = $page .'/'.\Cockatoo\path_urlencode($image['n']);
        $brl =  \Cockatoo\brlgen(\Cockatoo\Def::BP_STATIC, 'mongo', 'page', $fname, null);
        $type = $image[\Cockatoo\Def::F_TYPE];
        $content = &$image[\Cockatoo\Def::F_CONTENT];
        $ret = \Cockatoo\StaticContent::save($brl,$type,$this->user,$content);
        return array('r' => $ret);
      }elseif( $op === 'flist' ) {
        $page  = \Cockatoo\path_urlencode($session[\Cockatoo\Def::SESSION_KEY_POST]['page']);
        $brl =  \Cockatoo\brlgen(\Cockatoo\Def::BP_STATIC, 'mongo', 'page', $page, \Cockatoo\Beak::M_KEY_LIST);
        $images = \Cockatoo\BeakController::beakSimpleQuery($brl);
        $ret = [];
        foreach ( $images as &$fname ) {
          $ret[substr($fname,strlen($page)+1)] = '/_s_/mongo/page/' . $fname;
        }
        return $ret;
      }elseif( $op === 'fdelete' ) {
        $page  = \Cockatoo\path_urlencode($session[\Cockatoo\Def::SESSION_KEY_POST]['page']);
        // $fname = $page .'/'.\Cockatoo\path_urlencode($session[\Cockatoo\Def::SESSION_KEY_POST]['filename']);
        $fname = $page .'/'.$session[\Cockatoo\Def::SESSION_KEY_POST]['filename'];
        $brl =  \Cockatoo\brlgen(\Cockatoo\Def::BP_STATIC, 'mongo', 'page', $fname, \Cockatoo\Beak::M_DEL);
        $ret = \Cockatoo\BeakController::beakSimpleQuery($brl);
        return array('r' => $ret);
      }
    }catch ( \Exception $e ) {
      $s[\Cockatoo\Def::SESSION_KEY_ERROR] = $e->getMessage();
      $this->updateSession($s);
      $this->setMovedTemporary('/mongo/main');
       \Cockatoo\Log::error(__CLASS__ . '::' . __FUNCTION__ . $e->getMessage(),$e);
      return null;
    }
  }
  // @@@
  private function move_image($new,$page){
    $olds = array();
    $news = array();
    $brl =  \Cockatoo\brlgen(\Cockatoo\Def::BP_STATIC, 'mongo', $page, '', \Cockatoo\Beak::M_KEY_LIST);
    $images = \Cockatoo\BeakController::beakSimpleQuery($brl);
    foreach ( $images as $name ) {
      $old = \Cockatoo\brlgen(\Cockatoo\Def::BP_STATIC, 'mongo', $page, $name, \Cockatoo\Beak::M_DEL);
      $olds []= $old;
      $obrl  = \Cockatoo\brlgen(\Cockatoo\Def::BP_STATIC, 'mongo', $page, $name, \Cockatoo\Beak::M_GET);
      $oret = \Cockatoo\BeakController::beakQuery(array($obrl));
      if ( $oret[$obrl] ) {
        $nset = \Cockatoo\brlgen(\Cockatoo\Def::BP_STATIC, 'mongo', $new, $name, \Cockatoo\Beak::M_SET);
        $news []= array($nset,$oret[$obrl]);
      }
    }
    $ret = \Cockatoo\BeakController::beakQuery($news);
    $ret = \Cockatoo\BeakController::beakQuery($olds);
  }

  public function postProc(){
  }
}


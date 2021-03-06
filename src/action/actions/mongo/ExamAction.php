<?php
namespace mongo;
/**
 * ExamAction.php - ????
 *  
 * @package ????
 * @access public
 * @author hiroaki.kubota <hiroaki.kubota@mail.rakuten.com> 
 * @create 2011/07/07
 * @version $Id$
 * @copyright Copyright (C) 2011, rakuten 
 */
class ExamAction extends UserPostAction {
  protected $REDIRECT = '/mongo/exams';
  protected $COLLECTION = 'exams';
  protected $DOCNAME    = 'exam';

  static $NUM_QUESTION  = 10;
  static $NUM_CANDIDATE = 4;

  function new_doc(){
    $qname = 'new';
    $qs = null;
    for( $i = 0 ; $i < self::$NUM_QUESTION ; $i++ ) {
      $qs []= array(
        'q' => '',
        'contents' => array(),
        'a' => '',
        'e' => '',
        'c' => array('','','',''));
    }
    return array(
      'done' => 1,
      '_u' => 'new',
      'public' => '',
      'qname' => $qname,
      'qnum' => 5,
      'qs' => $qs
      );
  }
  function post_to_doc (&$post,&$doc) {
    $public  = $post['public'];
    $qname   = $post['qname'];
    $qnum    = $post['qnum'];
    $qsummary= $post['qsummary'];
    $docid  =  $post['_u'];
    $qs = null;
    for( $i = 0 ; $i < self::$NUM_QUESTION ; $i++ ) {
      $origin   = $post['q'.$i];
      $lines    = preg_split("@\r?\n@",$origin);
      $parser   = new \Cockatoo\PageParser('/mongo','/_s_/mongo/page',$qname,$lines);
      $contents =  $parser->parse();
      $answer   = $post['q'.$i.'a'];
      $eorigin   = $post['q'.$i.'e'];
      $lines    = preg_split("@\r?\n@",$eorigin);
      $parser   = new \Cockatoo\PageParser('/mongo','/_s_/mongo/page',$qname,$lines);
      $explanation =  $parser->parse();
      $candidates = null;
      for( $c = 0 ; $c < self::$NUM_CANDIDATE ; $c++ ) {
        $candidates []= ($post['q'.$i.'c'.$c]?$post['q'.$i.'c'.$c]:'');
      }
      $qs [] = array(
        'show' => ($answer?'show':''),
        'q' => $origin,
        'contents' => $contents,
        'a' => $answer,
        'c' => $candidates,
        'e' => $eorigin,
        'explanation' => $explanation,
        's' => array_merge(array($answer),$candidates)
        );
    }

    $exam = array(
      'public' => $public,
      '_u' => $docid,
      'qname' => $qname,
      'qnum' => $qnum,
      'qsummary' => $qsummary,
      'qs' => $qs);
    if ( ! $doc ) {
      $doc = $exam;
    }else{
      $doc = array_merge($doc,$exam);
    }
  }
  
  public function get(){
    $session     = $this->getSession();
    $docid       = $this->docid();
    $post = $session[\Cockatoo\Def::SESSION_KEY_POST];
    $op = $post['op'];

    if ( $op === 'eval' ) {
      // Eval score
      $doc = $session['exam'];
      $qs =& $doc['qs'];
      $all = sizeof($qs);
      $correct = 0;
      array_walk($qs,function(&$e,$i) use ($session,$post,$all,&$correct){
          if ( $post['q'.$i.'a'] !== null && (int)$post['q'.$i.'a'] === (int)$e['correct'] ) {
            $correct++;
          }
          $e['checked'] = $post['q'.$i.'a'];
          $e['show'] = 'show';
        });
      $doc['score'] = floor(100*$correct/$all);
      $doc['done'] = '1';
      // Save user data
      $user_data = $session[\Cockatoo\AccountUtil::SESSION_LOGIN];
      $user_data['exam'][$docid] = array('score' => $doc['score']);
      \Cockatoo\AccountUtil::save_account(MongoConfig::USER_COLLECTION,$user_data);
      // Update session
      $s[\Cockatoo\AccountUtil::SESSION_LOGIN] = $user_data;
      $s['exam'] = null;
      $this->updateSession($s);
      return array( $this->DOCNAME => $doc);
    }
    return parent::get();
  }
  public function get_hook(&$doc) {
    $method  = $this->getMethod();
    if ( $method===\Cockatoo\Beak::M_SET){
      return; // Edit mode
    }
    $qs = $doc['qs'];
    $qs = array_filter($doc['qs'],function ($e) {
        return (boolean)$e['show'];
      });
    array_walk($qs,function(&$e){
        $e['show'] = 'q';
        shuffle($e['s']);
        foreach ( $e['s'] as $k => $v ) {
          if ( $v === $e['a'] ) {
            $e['correct'] = $k;
            break;
          }
        }
      });
    shuffle($qs);
    $doc['title'] = $doc['qname'];
    $qs = array_slice($qs,0,$doc['qnum']);
    $qs[sizeof($qs)-1]['last'] = 1;
    $doc['qs'] = $qs;
    $s['exam'] = $doc;
    $this->updateSession($s);
  }

  function preview_hook(&$doc){
    $doc['done'] = '1';
  }
}


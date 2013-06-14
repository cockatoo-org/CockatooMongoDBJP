<?php
namespace mongo;
/**
 * EventAction.php - ????
 *  
 * @package ????
 * @access public
 * @author hiroaki.kubota <hiroaki.kubota@mail.rakuten.com> 
 * @create 2011/07/07
 * @version $Id$
 * @copyright Copyright (C) 2011, rakuten 
 */
class EventAction extends UserPostAction {
  protected $REDIRECT = '/mongo/events';
  protected $COLLECTION = 'events';
  protected $DOCNAME    = 'event';

  function new_doc(){
    $origin = '*New';
    $contents = array(array('tag' => 'h2','attr'=>array(),'children' => array(array('tag'=>'text' , 'text' => 'New'))));
    return array(
      '_u' => 'new',
      'origin' => $origin,
      'contents' => $contents
      );
  }
  function redirect_after_save(&$doc){
    return $this->REDIRECT;
  }

  function post_to_doc (&$post,&$doc) {
    if ( ! $doc ) {
      $doc = $post;
    }else{
      $doc = array_merge($doc,$post);
    }
    $npullback = $doc['capacity'] - count($doc['attenders']);
    if ( $npullback < 0 ) {
      throw new \Exception('Specified capacity smaller than attenders !');
    }
    while ( $npullback-- > 0  ) {
      $this->pullback_waiter($doc);
    }
    unset($doc['submit']);
    $origin   = $doc['origin'];
    $lines = preg_split("@\r?\n@",$origin);
    $parser = new \Cockatoo\PageParser($doc['title'],$lines);
    $doc['contents'] =  $parser->parse();
    return $doc;
  }

  const SEPARATOR = '.';
  function update_docid(&$docid,&$doc) {
    if ( ! $docid || strcmp($docid,'new')===0 ) {
      return str_replace('/','',$doc['date']) . self::SEPARATOR . $doc['event_id'];
    }
    $parsed_docid = explode(self::SEPARATOR,$docid);
    if ( ! (str_replace('/','',$doc['date']) === $parsed_docid[0]) ) {
      return str_replace('/','',$doc['date']) . self::SEPARATOR . $doc['event_id'];
    }
    return $docid;
  }
}

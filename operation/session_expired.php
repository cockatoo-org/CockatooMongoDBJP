#!/usr/bin/env php
<?php
/**
 * session_expired.php - ????
 *  
 * @package ????
 * @access public
 * @author  <hiroaki.kubota@mail.rakuten.com> 
 * @create 2012/03/16
 * @version $Id$
 * @copyright Copyright (C) 2012, rakuten 
 */

namespace Cockatoo;
require_once('/usr/local/cockatoo/def.php');
require_once(Config::COCKATOO_ROOT.'utils/session.php');
require_once(Config::COCKATOO_ROOT.'tools/beak/beak_walk.php');

function SessionCallback(&$brl,&$data) {
  global $service;
  $now = time();
  if ( $now > $data['_e'] ) {
    echo $data['_e'] . '  Expired (' .  strftime('%Y-%m-%d %H:%M:%S',$data['_e']) .') => '  . $brl . "\n";
    delSession($data['_u'],$service);
  }else{
//    echo $data['_e'] . '  Valid (' .  strftime('%Y-%m-%d %H:%M:%S',$data['_e']) .') => '  . $brl . "\n";
  }
}

$scheme = 'session';
$from = 'file';
$froml = null;
foreach ( array('core','mongo','pwatch','wiki','yslowviewer') as $service) {
  $walk = new \Cockatoo\BeakWalk($from,$service,$scheme,$froml);
  $walk->walk('\Cockatoo\SessionCallback');
}

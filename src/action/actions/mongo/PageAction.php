<?php
namespace mongo;
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

class PageAction extends \Cockatoo\PageAction {
  protected $NAMESPACE  = 'mongo';
  protected $STORAGE  = 'mongo';
  protected function user(&$session){
    return Lib::user($session);
  }
  protected function name(&$session){
    return Lib::name($session);
  }
  protected function isWritable(&$session){
    return Lib::isRoot($session);
  }
}
<?php
namespace mongo;
class Lib {
  #
  static function user(&$session) {
    return $session[\Cockatoo\AccountUtil::SESSION_LOGIN][\Cockatoo\AccountUtil::KEY_USER];
  }
  static function name(&$session) {
    return $session[\Cockatoo\AccountUtil::SESSION_LOGIN][\Cockatoo\AccountUtil::KEY_NAME];
  }
  static function isWritable(&$session) {
    if ( $session[\Cockatoo\AccountUtil::SESSION_LOGIN][\Cockatoo\AccountUtil::KEY_ROOT] ||
         $session[\Cockatoo\AccountUtil::SESSION_LOGIN][\Cockatoo\AccountUtil::KEY_WRITABLE] ) {
      return true;
    }
    return false;
  }
  static function isRoot(&$session) {
    if ( $session[\Cockatoo\AccountUtil::SESSION_LOGIN][\Cockatoo\AccountUtil::KEY_ROOT] ) {
      return true;
    }
    return false;
  }
}
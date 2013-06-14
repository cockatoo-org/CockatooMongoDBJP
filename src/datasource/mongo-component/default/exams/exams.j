{
"@R":"1371173992",
"type":"HorizontalWidget",
"subject":"exams",
"description":"",
"css":"#exams div.prevscore {\r
  color: #CC0000;\r
}",
"js":"",
"id":"exams",
"class":"uplist",
"body":"<h2>\u554f\u984c</h2>\r
<?cs each: item = A.mongo.exams?>\r
 <div class=\"<?cs if:!item.public ?>private<?cs /if?>\">\r
  <dt><a href=\"<?cs var:C._base ?>/exams/<?cs var:item._u ?>\"><?cs var:item.qname?> \uff1a\uff08\u5168<?cs var:item.qnum ?>\u554f\uff09</a> (by <?cs var:item._ownername ?> <time><?cs var:item._timestr ?></time>) </dt><dd><?cs if:?S.login.exam[item._u].score ?><div class=\"prevscore\">\u524d\u56de\u30b9\u30b3\u30a2\uff1a <?cs var:S.login.exam[item._u].score ?>\u70b9</div><?cs /if ?>\r
<?cs var:item.qsummary ?></dd>\r
 </div>\r
<?cs /each ?>\r
<?cs if:S.login.writable?>\r
  <div class=\"edit\"><a href=\"<?cs var:C._base ?>/exams/edit/new\">\u65b0\u898f\u554f\u984c</a></div>\r
<?cs /if ?>",
"action":[
"action://mongo-action/mongo/ExamAction?getA"
],
"header":"<link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"/_s_/mongo/default/css/up.css\" />\r
",
"bottom":"",
"_u":"exams/exams"
}
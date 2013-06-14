{
"@R":"1371174190",
"type":"HorizontalWidget",
"subject":"tips",
"description":"",
"css":"",
"js":"",
"id":"tips",
"class":"uplist",
"body":"<h2>TIPS</h2>\r
<ul>\r
 <?cs each: item = A.mongo.tips ?>\r
   <li class=\"<?cs if:!item.public ?>private<?cs /if?>\" ><a href=\"<?cs var:C._base ?>/tips/<?cs var:item._u ?>\"><?cs var:item.title ?></a> (by <?cs var:item._ownername ?> <time><?cs var:item._timestr ?></time>)</li>\r
  <?cs /each ?>\r
</ul>\r
<?cs if:S.login.writable?>\r
  <div class=\"edit\"><a href=\"<?cs var:C._base ?>/tips/edit/new\">\u65b0\u898fTIPS</a></div>\r
<?cs /if ?>\r
",
"action":[
"action://mongo-action/mongo/TipAction?getA"
],
"header":"<link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"/_s_/mongo/default/css/up.css\" />\r
",
"bottom":"",
"_u":"tips/tips"
}
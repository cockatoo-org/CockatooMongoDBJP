{
"@R":"1371110203",
"type":"HorizontalWidget",
"subject":"tips",
"description":"",
"css":"#tips div.edit {\r
  float: right;\r
  font-size: 0.7em;\r
}\r
#tips h2 {\r
  padding: 2px 0 0 10px;\r
  border-bottom: 1px solid #bbbbbb;\r
}\r
#tips a {\r
  text-decoration: underline;\r
  line-height: 1.5em;\r
}\r
#tips li.private,\r
#tips li.private a {\r
  color: #999999;\r
}",
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
"header":"",
"bottom":"",
"_u":"tips/tips"
}
{
"@R":"1371110213",
"type":"HorizontalWidget",
"subject":"news",
"description":"",
"css":"",
"js":"",
"id":"news",
"class":"uplist",
"body":"<h2>NEWS</h2>\r
<ul>\r
  <?cs each: item = A.mongo.newss ?>\r
    <li class=\"<?cs if:!item.public ?>private<?cs /if?>\" ><a href=\"<?cs var:C._base ?>/news/<?cs var:item._u ?>\"><?cs var:item.title ?></a> (by <?cs var:item._ownername ?> <time><?cs var:item._timestr ?></time>)</li>\r
  <?cs /each ?>\r
</ul>\r
<?cs if:S.login.writable?>\r
  <div class=\"edit\"><a href=\"<?cs var:C._base ?>/news/edit/news\">\u65b0\u898fNEWS</a></div>\r
<?cs /if ?>\r
",
"action":[
"action://mongo-action/mongo/NewsAction?getA"
],
"header":"<link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"/_s_/mongo/default/css/up.css\" />",
"bottom":"",
"_u":"news/news"
}
{
"@R":"1371110614",
"type":"HorizontalWidget",
"subject":"newspage",
"description":"",
"css":"",
"js":"",
"id":"newspage",
"class":"uppage",
"body":"<h1><?cs var:A.mongo.news.title?></h1>\r
<div class=\"wikipage\"><?cs call:drawTags(A.mongo.news.contents.0)?></div>\r
\r
<?cs if:A.mongo.news.writable ?>\r
  <div class=\"edit\"><a href=\"<?cs var:C._base ?>/news/edit/<?cs var:A.mongo.news._u ?>\">\u7de8\u96c6</a></div>\r
<?cs /if ?>\r
\r
\r
",
"action":[
""
],
"header":"<link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"/_s_/mongo/default/css/up.css\" />\r
",
"bottom":"",
"_u":"news/newspage"
}
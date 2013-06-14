{
"@R":"1371110601",
"type":"HorizontalWidget",
"subject":"tippage",
"description":"",
"css":"",
"js":"",
"id":"tippage",
"class":"uppage",
"body":"<h1><?cs var:A.mongo.tip.title ?></h1>\r
<div class=\"wikipage\"><?cs call:drawTags(A.mongo.tip.contents.0)?></div>\r
\r
<?cs if:A.mongo.tip.writable ?>\r
  <div class=\"edit\"><a href=\"<?cs var:C._base ?>/tips/edit/<?cs var:A.mongo.tip._u ?>\">\u7de8\u96c6</a></div>\r
<?cs /if ?>\r
\r
",
"action":[
""
],
"header":"<link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"/_s_/mongo/default/css/up.css\" />\r
",
"bottom":"",
"_u":"tips/tippage"
}
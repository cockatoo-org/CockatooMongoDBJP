{
"@R":"1371110293",
"type":"HorizontalWidget",
"subject":"events",
"description":"",
"css":"",
"js":"",
"id":"events",
"class":"uplist",
"body":"<h2>\u30a4\u30d9\u30f3\u30c8</h2>\r
<?cs each: item = A.mongo.events ?>\r
 <div class=\"<?cs if:!item.public ?>private<?cs /if?>\" >\r
<?cs if: item.writable ?>\r
   <dt class=\"writable\"><a href=\"<?cs var:C._base ?>/events/<?cs var:item._u ?>\"><?cs var:item.date ?> <?cs var:item.time ?> <?cs var:item.title ?></a> (by <?cs var:item._ownername ?> <time><?cs var:item._timestr ?></time>)</dt>\r
<?cs else ?>\r
  <dt><a href=\"<?cs var:item.event_url ?>\"><?cs var:item.date ?> <?cs var:item.time ?> <?cs var:item.title ?></a> (by <?cs var:item._ownername ?> <time><?cs var:item._timestr ?></time>)</dt>\r
<?cs /if ?>\r
  <dd><?cs var:item.subtitle ?></dd>\r
 </div>\r
<?cs /each ?>\r
<?cs if:S.login.writable?>\r
  <div class=\"edit\"><a href=\"<?cs var:C._base ?>/events/edit/new\">\u65b0\u898f\u30a4\u30d9\u30f3\u30c8</a></div>\r
<?cs /if ?>\r
",
"action":[
"action://mongo-action/mongo/EventAction?getA"
],
"header":"<link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"/_s_/mongo/default/css/up.css\" />",
"bottom":"",
"_u":"events/events"
}
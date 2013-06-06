{
"@R":"1370508594",
"type":"HorizontalWidget",
"subject":"noryo2013_timetable",
"description":"",
"css":"\r
div.noryo2013_timetable div.tab table.timetable td div.t.t00 {\r
  border-top: 1px solid  #402817;\r
}\r
div.noryo2013_timetable div.tab table.timetable td div.t.t30 {\r
  border-top: 1px dashed  #402817;\r
}\r
div.noryo2013_timetable div.tab table.timetable td div.t {\r
  height:30px;\r
}\r
\r
",
"js":"$(function(){\r
  draw_timetable(null,function(session){return 'div.noryo2013_timetable div.tab table td.' + session.place + '> div.t'+session.start.replace(/:/,'')});\r
  \r
});",
"id":"",
"class":"noryo2013_timetable",
"body":"<div class=\"tab\">\r
<table class=\"timetable\">\r
<tbody>\r
<tr>\r
<th class=\"first\"></th>\r
<th class=\"cols place place1\" place=\"top:110px;left:-10px;height:140px;width:50px\">\u304f\u3089\u307e\u3048</th>\r
<th class=\"cols place place2\" place=\"top:190px;left:330px;height:130px;width:180px\">\u30ed\u30a4\u30a2\u30eb\u30d6\u30eb\u30fc</th>\r
<th class=\"cols place place3\" place=\"top:260px;left:-10px;height:110px;width:180px\">\u30ae\u30e3\u30e9\u30ea\u30fc</th>\r
</tr>\r
<tr class=\"\">\r
<td class=\"first\">\r
<div class=\"t t00 t1200\">12:00</div>\r
<div class=\"t t15 t1215\"></div>\r
<div class=\"t t30 t1230\"></div>\r
<div class=\"t t45 t1245\"></div>\r
<div class=\"t t00 t1300\">13:00</div>\r
<div class=\"t t15 t1315\"></div>\r
<div class=\"t t30 t1330\"></div>\r
<div class=\"t t45 t1345\"></div>\r
<div class=\"t t00 t1400\">14:00</div>\r
<div class=\"t t15 t1415\"></div>\r
<div class=\"t t30 t1430\"></div>\r
<div class=\"t t45 t1445\"></div>\r
<div class=\"t t00 t1500\">15:00</div>\r
<div class=\"t t15 t1515\"></div>\r
<div class=\"t t30 t1530\"></div>\r
<div class=\"t t45 t1545\"></div>\r
<div class=\"t t00 t1600\">16:00</div>\r
<div class=\"t t15 t1615\"></div>\r
<div class=\"t t30 t1630\"></div>\r
<div class=\"t t45 t1645\"></div>\r
<div class=\"t t00 t1700\">17:00</div>\r
<div class=\"t t15 t1715\"></div>\r
<div class=\"t t30 t1730\"></div>\r
<div class=\"t t45 t1745\"></div>\r
</td>\r
<td class=\"cols place1\">\r
<div class=\"t t00 t1200\"></div>\r
<div class=\"t t15 t1215\"></div>\r
<div class=\"t t30 t1230\"></div>\r
<div class=\"t t45 t1245\"></div>\r
<div class=\"t t00 t1300\"></div>\r
<div class=\"t t15 t1315\"></div>\r
<div class=\"t t30 t1330\"></div>\r
<div class=\"t t45 t1345\"></div>\r
<div class=\"t t00 t1400\"></div>\r
<div class=\"t t15 t1415\"></div>\r
<div class=\"t t30 t1430\"></div>\r
<div class=\"t t45 t1445\"></div>\r
<div class=\"t t00 t1500\"></div>\r
<div class=\"t t15 t1515\"></div>\r
<div class=\"t t30 t1530\"></div>\r
<div class=\"t t45 t1545\"></div>\r
<div class=\"t t00 t1600\"></div>\r
<div class=\"t t15 t1615\"></div>\r
<div class=\"t t30 t1630\"></div>\r
<div class=\"t t45 t1645\"></div>\r
<div class=\"t t00 t1700\"></div>\r
<div class=\"t t15 t1715\"></div>\r
<div class=\"t t30 t1730\"></div>\r
<div class=\"t t45 t1745\"></div>\r
</td>\r
<td class=\"cols place2\">\r
<div class=\"t t00 t1200\"></div>\r
<div class=\"t t15 t1215\"></div>\r
<div class=\"t t30 t1230\"></div>\r
<div class=\"t t45 t1245\"></div>\r
<div class=\"t t00 t1300\"></div>\r
<div class=\"t t15 t1315\"></div>\r
<div class=\"t t30 t1330\"></div>\r
<div class=\"t t45 t1345\"></div>\r
<div class=\"t t00 t1400\"></div>\r
<div class=\"t t15 t1415\"></div>\r
<div class=\"t t30 t1430\"></div>\r
<div class=\"t t45 t1445\"></div>\r
<div class=\"t t00 t1500\"></div>\r
<div class=\"t t15 t1515\"></div>\r
<div class=\"t t30 t1530\"></div>\r
<div class=\"t t45 t1545\"></div>\r
<div class=\"t t00 t1600\"></div>\r
<div class=\"t t15 t1615\"></div>\r
<div class=\"t t30 t1630\"></div>\r
<div class=\"t t45 t1645\"></div>\r
<div class=\"t t00 t1700\"></div>\r
<div class=\"t t15 t1715\"></div>\r
<div class=\"t t30 t1730\"></div>\r
<div class=\"t t45 t1745\"></div>\r
</td>\r
<td class=\"cols place3\">\r
<div class=\"t t00 t1200\"></div>\r
<div class=\"t t15 t1215\"></div>\r
<div class=\"t t30 t1230\"></div>\r
<div class=\"t t45 t1245\"></div>\r
<div class=\"t t00 t1300\"></div>\r
<div class=\"t t15 t1315\"></div>\r
<div class=\"t t30 t1330\"></div>\r
<div class=\"t t45 t1345\"></div>\r
<div class=\"t t00 t1400\"></div>\r
<div class=\"t t15 t1415\"></div>\r
<div class=\"t t30 t1430\"></div>\r
<div class=\"t t45 t1445\"></div>\r
<div class=\"t t00 t1500\"></div>\r
<div class=\"t t15 t1515\"></div>\r
<div class=\"t t30 t1530\"></div>\r
<div class=\"t t45 t1545\"></div>\r
<div class=\"t t00 t1600\"></div>\r
<div class=\"t t15 t1615\"></div>\r
<div class=\"t t30 t1630\"></div>\r
<div class=\"t t45 t1645\"></div>\r
<div class=\"t t00 t1700\"></div>\r
<div class=\"t t15 t1715\"></div>\r
<div class=\"t t30 t1730\"></div>\r
<div class=\"t t45 t1745\"></div>\r
</td>\r
</tr>\r
</tbody>\r
</table>\r
</div>\r
<?cs call:draw_details(A.mongo.timeboxs.raw) ?>\r
\r
<script>\r
  var timetable = <?cs var:A.mongo.timeboxs.@json ?>;\r
</script>\r
",
"action":[
"action://mongo-action/mongo/TimetableAction?getA"
],
"header":"",
"bottom":"",
"_u":"noryo2013/timetable/timetable"
}
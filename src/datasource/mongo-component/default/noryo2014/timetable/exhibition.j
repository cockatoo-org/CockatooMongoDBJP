{
"@R":"1412689134",
"type":"HorizontalWidget",
"subject":"noryo2014_exhibition",
"description":"",
"css":"div.noryo2014_timetable div.tab table.timetable td div.N {  \r
  height:120px;\r
  border-top: 1px dashed  #402817;\r
}\r
div.noryo2014_timetable div.tab table.timetable td.first div.N {  \r
  text-align:center;\r
  padding-top : 40px;\r
  height:80px;\r
}",
"js":"$( function (){\r
  draw_timetable(\r
         function(session){\r
             if ( session.nbooth ) {\r
                return session.nbooth * 120 -1;\r
             }\r
             return 119;\r
          },\r
          function(session){ \r
            return 'div.noryo2014_timetable div.tab div.' + session.booth;\r
          });\r
})\r
",
"id":"",
"class":"noryo2014_timetable",
"body":"<div class=\"tab\">\r
  <table class=\"timetable\">\r
    <tbody>\r
      <tr>\r
\t<th class=\"first\">\u30d6\u30fc\u30b9</th>\r
\t<th class=\"cols place A\" place=\"top:45px;left:110px;height:70px;width:140px\">A\u30a8\u30ea\u30a2</th>\r
\t<th class=\"cols place B\" place=\"top:125px;left:110px;height:70px;width:140px\">B\u30a8\u30ea\u30a2</th>\r
\t<th class=\"cols place C\" place=\"top:205px;left:110px;height:70px;width:140px\">C\u30a8\u30ea\u30a2</th>\r
      </tr>\r
      <tr class=\"first\">\r
\t<td class=\"first N\">\r
\t  <div class=\"N N1\">1</div>\r
\t  <div class=\"N N2\">2</div>\r
\t  <div class=\"N N3\">3</div>\r
\t  <div class=\"N N4\">4</div>\r
\t</td>\r
\t<td class=\"cols A\">\r
\t  <div class=\"N A1\"></div>\r
\t  <div class=\"N A2\"></div>\r
\t  <div class=\"N A3\"></div>\r
\t  <div class=\"N A4\"></div>\r
\t</td>\r
\t<td class=\"cols B\">\r
\t  <div class=\"N B1\"></div>\r
\t  <div class=\"N B2\"></div>\r
\t  <div class=\"N B3\"></div>\r
\t  <div class=\"N B4\"></div>\r
\t</td>\r
\t<td class=\"cols C\">\r
\t  <div class=\"N C1\"></div>\r
\t  <div class=\"N C2\"></div>\r
\t  <div class=\"N C3\"></div>\r
\t  <div class=\"N C4\"></div>\r
\t</td>\r
      </tr>\r
    </tbody>\r
  </table>\r
</div>\r
\r
<?cs call:draw_details(A.mongo.timeboxs.raw) ?>\r
\r
<script>\r
  var timetable = <?cs var:A.mongo.timeboxs.@json ?>;\r
</script>",
"action":[
"action://mongo-action/mongo/TimetableAction?getA&table_name=noryo2014&exhibition=1#cache#cexp=1"
],
"header":"",
"bottom":"",
"_u":"noryo2014/timetable/exhibition"
}
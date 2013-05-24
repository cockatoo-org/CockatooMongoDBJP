{
"@R":"1369385447",
"type":"HorizontalWidget",
"subject":"edit",
"description":"edit",
"css":"#editPage {\r
  text-align: center;\r
  padding: 10px;\r
}\r
#editPage  textarea[name=\"origin\"] {\r
  width: 800px;\r
  height:600px;\r
}\r
",
"js":"$(function(){\r
    $('input.doupload').click(function(){\r
console.log($(this).parents('form').attr('action'));\r
console.log({op:'upload'});\r
\t$('input.upload').upload($(this).parents('form').attr('action'), \r
\t\t\t\t {op:'upload'},\r
\t\t\t\t function(res) {\r
\t\t\t\t   alert('File uploaded');\r
\t\t\t\t }, 'json');\r
    });\r
});",
"id":"editPage",
"class":"",
"body":"<form method =\"POST\" action=\"<?cs var:C._base ?>/edit/<?cs var: A.mongo.page.title?>\">\r
  <textarea name=\"origin\"><?cs var:A.mongo.page.origin ?></textarea>\r
  <div>\r
  <input type=\"submit\" name=\"op\" value=\"preview\"></input>\r
  <input type=\"submit\" name=\"op\" value=\"save\"></input>\r
  <a target=\"_blank\" href=\"<?cs var:C._base ?>/notation\">notation</a>\r
  </div>\r
</form>\r
<form method =\"POST\" enctype=\"multipart/form-data\" action=\"<?cs var:C._base ?>/edit/<?cs var: A.mongo.page.title?>\">\r
 <input class=\"upload\" type=\"file\" value=\"\" name=\"filename\">\r
 <input class=\"doupload\" type=\"button\" value=\"upload\"></input>\r
</form>\r
",
"action":[
"action://mongo-action/mongo/PageAction?get"
],
"_u":"pages/edit",
"header":"",
"bottom":"<script type=\"text/javascript\" src=\"/_s_/mongo/default/js/jquery.upload-1.0.2.js\"></script>\r
"
}
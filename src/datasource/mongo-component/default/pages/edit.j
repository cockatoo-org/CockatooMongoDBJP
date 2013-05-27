{
"@R":"1369632106",
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
#images table {\r
  text-spacing: 0;\r
  text-align: left;\r
  border: 2px solid #BBBBBB;\r
}\r
#images table td {\r
  padding : 5px 10px;\r
  border-left: 1px solid #BBBBBB;\r
  border-bottom: 1px solid #BBBBBB;\r
}\r
#images table td.img {\r
  height: 100px;\r
  width: 100px;\r
}\r
#images table td.img img {\r
  max-height: 100px;\r
  max-width: 100px;\r
}",
"js":"$(function(){\r
  function image_list () {\r
    $.ajax({\r
      url: $('#image_action').attr('action'),\r
      type: 'POST',\r
      dataType: 'JSON',\r
      data: {\r
\top: 'flist',\r
\tpage:$('#image_action').attr('pagename')\r
      },\r
      success: function(ret,st,xhr){\r
\t\r
\t  $('#images > table > tbody').empty();\r
\tvar tbody = $('#images > table > tbody');\r
\tfor ( var i in ret ) {\r
\t  var tr = $('<tr />');\r
\t    $('<td class=\"img\" />')\r
\t    .append( $('<img />')\r
\t\t    .attr('src',ret[i]))\r
\t    .appendTo(tr);\r
\t    $('<td class=\"name\" />')\r
\t    .text(i)\r
\t    .appendTo(tr);\r
\t    $('<td class=\"format\" />')\r
\t    .text('&ref('+i+');')\r
\t    .appendTo(tr);\r
\t    $('<td class=\"check\" />')\r
\t    .html('<input class=\"del\" type=\"button\" name=\"'+i+'\" value=\"delete\" />')\r
\t    .appendTo(tr);\r
\t  \r
\t  tr.appendTo(tbody);\r
\t}\r
        $('#image_action #images input.del').click(function(){\r
\t    $.ajax({\r
\t      url: $('#image_action').attr('action'),\r
\t      type: 'POST',\r
\t      dataType: 'JSON',\r
\t      data: {\r
\t\top: 'fdelete',\r
\t\tpage:$('#image_action').attr('pagename'),\r
\t\tfilename: $(this).attr('name')\r
\t      },\r
\t      success: function(ret,st,xhr){\r
\t\timage_list();\r
\t      }\r
\t    })\r
\t});\r
      }\r
    });\r
  }\r
  $('#image_action input[name=\"upload\"]').click(function(){\r
    $('#image_action input[name=\"filename\"]').upload($('#image_action').attr('action'), \r
\t\t\t\t {\r
                                   op:'fupload',\r
                                   page:$('#image_action').attr('pagename')\r
                                 },\r
\t\t\t\t function(res) {\r
\t\t\t\t   image_list();\r
\t\t\t\t }, '');\r
    });\r
  image_list();\r
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
\r
<form id=\"image_action\" action=\"<?cs var:C._base ?>/edit_action\" pagename=\"<?cs var: A.mongo.page.title?>\">\r
 <input type=\"file\" name=\"filename\" value=\"\" />\r
 <input type=\"button\" name=\"upload\" value=\"upload\" />\r
\r
<div id=\"images\">\r
<table>\r
<thead >\r
<tr>\r
<td>image</td>\r
<td>name</td>\r
<td>format</td>\r
<td>action</td>\r
<tr>\r
</thead>\r
<tbody />\r
</table>\r
</div>\r
\r
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
{
"@R":"1369717566",
"type":"HorizontalWidget",
"subject":"page",
"description":"page",
"css":"#page div.edit {\r
  float: right;\r
  font-size: 0.7em;\r
}\r
\r
#editPage {\r
  text-align: center;\r
  padding: 10px;\r
  display: none;\r
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
"js":"$( function () {\r
  // INDEX\r
  $('div.ih > a.toggle').text('Hide indexes').addClass('visible');\r
  $('div.ih > a.toggle').click(function(ev){\r
    if ( $(this).hasClass('visible') ) {\r
      $('div.ih li').slideUp();\r
      $(this).removeClass('visible').text('View indexes');\r
    }else{\r
      $('div.ih li').slideDown();\r
      $(this).addClass('visible').text('Hide indexes');\r
    }\r
  });\r
  // EDIT\r
  $('#page div.edit').click(function(){\r
    $('#editPage').slideDown();\r
    image_list();\r
  });\r
\r
  // SAVE\r
  var editAction = $('#editAction');\r
  $('#editAction input[value=\"save\"]').click(function(){\r
    var url = editAction.attr('action');\r
      $.ajax({\r
\turl: url,\r
\ttype: 'POST',\r
\tdataType: 'JSON',\r
\tdata: {\r
\t  op: 'save',\r
\t  page: editAction.attr('pagename'),\r
\t  origin: editAction.find('textarea[name=\"origin\"]').val()\r
\t},\r
\tsuccess: function(ret,st,xhr){\r
\t  console.log('/mongo/'+editAction.attr('pagename'));\r
\t  window.location = '/mongo/'+editAction.attr('pagename');\r
\t}\r
      });\r
  });\r
  function page(obj){\r
    var ret = '';\r
    for ( var i in obj ) {\r
      var elem = obj[i];\r
      var attr = '';\r
      for ( var a in elem.attr ) {\r
\tattr += a+'=\"'+elem.attr[a]+'\" '\r
      }\r
      if( elem.tag === 'text' ) {\r
\tret += (elem.text)?elem.text:'';\r
\tret += page(elem.children);\r
      }else if( elem.tag === 'br' ) {\r
\tret += '<br />';\r
      }else{\r
\tret += '<'+elem.tag+' '+attr+'>' + page(elem.children) + '</'+elem.tag+'>';\r
      }\r
    }\r
    return ret;\r
  }\r
  // PREVIEW\r
  $('#editAction input[value=\"preview\"]').click(function(){\r
    var url = editAction.attr('action');\r
      $.ajax({\r
\turl: url,\r
\ttype: 'POST',\r
\tdataType: 'JSON',\r
\tdata: {\r
\t  op: 'preview',\r
\t  page: editAction.attr('pagename'),\r
\t  origin: editAction.find('textarea[name=\"origin\"]').val()\r
\t},\r
\tsuccess: function(ret,st,xhr){\r
\t    $('#page div.page').html(page(ret.page.contents));\r
\t}\r
      });\r
  });  \r
  // IMAGE\r
  var imageAction = $('#imageAction');\r
  function image_list () {\r
    var url = imageAction.attr('action');\r
    $.ajax({\r
      url: url,\r
      type: 'POST',\r
      dataType: 'JSON',\r
      data: {\r
\top: 'flist',\r
\tpage: imageAction.attr('pagename')\r
      },\r
      success: function(ret,st,xhr){\r
\t$('#images > table > tbody').empty();\r
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
\t  tr.appendTo(tbody);\r
\t}\r
        $('#imageAction #images input.del').click(function(){\r
\t    $.ajax({\r
\t      url: url,\r
\t      type: 'POST',\r
\t      dataType: 'JSON',\r
\t      data: {\r
\t\top: 'fdelete',\r
\t\tpage: imageAction.attr('pagename'),\r
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
  $('#imageAction input[name=\"upload\"]').click(function(){\r
    var url = imageAction.attr('action');\r
    $('#imageAction input[name=\"filename\"]').upload( \r
                                 url,\r
\t\t\t\t {\r
                                   op: 'fupload',\r
                                   page: imageAction.attr('pagename')\r
                                 },\r
\t\t\t\t function(res) {\r
\t\t\t\t   image_list();\r
\t\t\t\t }, '');\r
    });\r
});",
"id":"page",
"class":"",
"body":"<div class=\"page\">\r
  <div class=\"credit\">by <?cs var:A.mongo.page._ownername ?> <time><?cs var:A.mongo.page._timestr ?></time></div>\r
<?cs each:item = A.mongo.page.contents ?>\r
  <?cs call:drawTags(item)?>\r
<?cs /each ?>\r
</div>\r
\r
<?cs if:S.login.root?>\r
<div class=\"edit\"><a href=\"#\">\u7de8\u96c6</a></div>\r
<div id=\"editPage\">\r
  <form id=\"editAction\" action=\"<?cs var:C._base ?>/edit_action\" pagename=\"<?cs var: A.mongo.page.title?>\">\r
    <textarea name=\"origin\"><?cs var:A.mongo.page.origin ?></textarea>\r
    <div>\r
      <input type=\"button\" name=\"op\" value=\"preview\"></input>\r
      <input type=\"button\" name=\"op\" value=\"save\"></input>\r
      <a target=\"_blank\" href=\"<?cs var:C._base ?>/notation\">notation</a>\r
    </div>\r
  </form>\r
  \r
  <form id=\"imageAction\" action=\"<?cs var:C._base ?>/edit_action\" pagename=\"<?cs var: A.mongo.page.title?>\">\r
    <input type=\"file\" name=\"filename\" value=\"\" />\r
    <input type=\"button\" name=\"upload\" value=\"upload\" />\r
    <div id=\"images\">\r
      <table>\r
\t<thead >\r
\t  <tr>\r
\t    <td>image</td>\r
\t    <td>name</td>\r
\t    <td>format</td>\r
\t    <td>action</td>\r
\t  <tr>\r
\t</thead>\r
\t<tbody />\r
      </table>\r
    </div>\r
  </form>\r
  \r
</div>\r
<?cs /if ?>\r
\r
\r
<!--\r
<div class=\"mongo\">\r
<div class=\"window\" style=\"width:100%;clear:both;\">\r
</div>\r
</div>\r
-->\r
",
"action":[
"action://mongo-action/mongo/PageAction?get"
],
"_u":"pages/page",
"header":"",
"bottom":"<script type=\"text/javascript\" src=\"/_s_/mongo/default/js/jquery.upload-1.0.2.js\"></script>"
}
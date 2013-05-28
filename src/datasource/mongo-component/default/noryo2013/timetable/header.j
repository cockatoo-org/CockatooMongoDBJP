{
"@R":"1369715538",
"type":"HorizontalWidget",
"subject":"noryo2013_timetable_header",
"description":"",
"css":"#noryo2013_timetable_header div.nav {\r
  margin: 80px 5px 0 5px;\r
  font-size: 1.2em;\r
  color: #4c3a2c;\r
}\r
#noryo2013_timetable_header div.nav ul {\r
  list-style: none;\r
  padding: 0;\r
  margin: 0;\r
}\r
#noryo2013_timetable_header div.nav li {\r
  float: left;\r
  padding:7px 15px 4px 15px;\r
  border-radius: 8px 8px 0 0;\r
  background-color: #f6f4cd;\r
  border-width: 2px;\r
  border-style: solid;\r
  border-color: #4c3a2c;\r
  opacity: 0.9;\r
}\r
#noryo2013_timetable_header div.nav li.selected {\r
//  border-width: 2px 2px 0 2px;\r
   border-bottom: 2px solid #f6f4cd;\r
}\r
#noryo2013_timetable_header div.nav li:hover {\r
  background-color: #f05500;\r
}\r
#noryo2013_timetable_header div.nav li:hover > a {\r
  color: #ffffff;\r
}\r
\r
div.noryo2013_timetable div.tab {\r
  margin: 0 5px;\r
  padding: 5px;\r
  opacity: 0.9;\r
  background-color: #f6f4cd;\r
  color : #885500;\r
  text-align: left;\r
  border-width: 0 2px 2px 2px;\r
  border-style: solid;\r
  border-color: #402817;\r
  border-radius: 0 0 8px 8px;\r
  line-height: 1.2em;\r
  overflow:hidden;\r
}\r
div.noryo2013_timetable div.tab div.session{\r
  width:276px;\r
  border-radius: 8px;\r
  background-color: #fFf8e0;\r
  border: 1px solid  #402817;\r
  opacity: 0.9;\r
  float: left; \r
  overflow:hidden;\r
}\r
div.noryo2013_timetable div.tab div.session a{\r
}\r
div.noryo2013_timetable div.tab div.session img.logo{\r
 float:left;\r
 height:60px;\r
}\r
\r
div.noryo2013_timetable div.tab div.session:hover {\r
  cursor: pointer;\r
  background-color: #cc5500;\r
  color: #FFFFFF;\r
}\r
div.noryo2013_timetable div.tab div.session:hover a {\r
  color: #FFFFFF;\r
}\r
\r
div.noryo2013_timetable div.tab div.session div.title{\r
  font-weight: 600;\r
  text-decoration: underline;\r
}\r
div.noryo2013_timetable div.tab div.session div.incharge{\r
  float:right;\r
  text-decoration: underline;\r
}\r
div.noryo2013_timetable div.tab div.session div.overview{\r
  float:left;\r
  margin-left:10px;\r
}\r
\r
div.noryo2013_timetable div.details {\r
  display:none;\r
}\r
\r
div.noryo2013_timetable div.detail {\r
  top:15px;\r
  left: 15px;\r
  position: absolute;\r
  z-index: 9999;\r
  width: 920px;\r
  padding: 5px;\r
  font-size: 1.5em;\r
  line-height: 1.5em;\r
  background-color: #000000;\r
  background-image: url(\"/_s_/mongo/noryo2013/event.png\");\r
  background-repeat: repeat-x;\r
  border-radius: 16px;\r
  border: 2px solid  #402817;\r
  display:none;\r
  color: #ffffff;\r
}\r
div.page a {\r
  color:#ffffff;\r
}\r
\r
div.noryo2013_timetable div.detail div.close:hover {\r
  background-image:url(\"/_s_/mongo/noryo2013/ui-icons_469bdd_256x240.png\");\r
}\r
div.noryo2013_timetable div.detail div.close {\r
  background-image:url(\"/_s_/mongo/noryo2013/ui-icons_d8e7f3_256x240.png\");\r
  background-position: -96px -128px;\r
  position: absolute;\r
  right: .3em;\r
  width:16px;\r
  height:16px;\r
  display: block;\r
  margin: 1px;\r
}\r
div.noryo2013_timetable div.detail table {\r
  color: #ffff22;\r
}\r
div.noryo2013_timetable div.detail span.c,\r
div.noryo2013_timetable div.detail span.b,\r
div.noryo2013_timetable div.detail span.q {\r
  color:#888888;\r
}\r
div.noryo2013_timetable div.detail td.key {\r
  font-weight:600;\r
  width: 120px;\r
  vertical-align:top;\r
  padding-left: 10px;\r
}\r
div.noryo2013_timetable div.detail td.sep {\r
  font-weight:600;\r
  vertical-align:top;\r
}\r
div.noryo2013_timetable div.detail td.comma {\r
  color:#888888;\r
  font-weight:600;\r
  vertical-align: bottom;\r
}\r
div.noryo2013_timetable div.detail td.title {\r
  font-weight:600;\r
  font-size: 1.5em;\r
}\r
div.noryo2013_timetable div.detail td.start,\r
div.noryo2013_timetable div.detail td.end {\r
  color: #ff4444;\r
}\r
div.noryo2013_timetable div.detail hr.sep {\r
  border-color: #4c3a2c;\r
}\r
div.noryo2013_timetable div.detail img.logo {\r
  /* float:left; */\r
  height: 60px;\r
}\r
\r
div.noryo2013_timetable div.tab table.timetable{\r
  border: 2px solid #402817;\r
  border-radius: 8px;\r
  border-spacing: 0;\r
}\r
div.noryo2013_timetable div.tab table.timetable th {\r
  padding : 2px 0 1px 0;\r
  border-bottom: 2px solid #402817;\r
  background-color: #402817;\r
  color: #FFFFFF;\r
  font-size: 1.2em;\r
  text-align: center;\r
}\r
div.noryo2013_timetable div.tab table.timetable th.first {\r
  width: 100px;\r
}\r
div.noryo2013_timetable div.tab table.timetable th.cols {\r
  width: 279px;\r
  border-left: 2px solid  #402817;\r
  border-bottom: 1px dashed  #402817;\r
}\r
\r
div.noryo2013_timetable div.tab table.timetable td {\r
}\r
div.noryo2013_timetable div.tab table.timetable td.first {\r
  height: 98px;\r
  vertical-align:10px;\r
  text-decoration: underline;\r
  font-weight:600;\r
  border-bottom: 1px dashed  #402817;\r
}\r
\r
div.noryo2013_timetable div.tab table.timetable td.cols {\r
  width: 279px;\r
  border-left: 2px solid  #402817;\r
  border-bottom: 1px dashed #402817;\r
  vertical-align: top;\r
\r
}\r
\r
\r
div.noryo2013_timetable div.tab table.timetable th.place {\r
  cursor: pointer;\r
  text-decoration: underline;\r
}\r
\r
#place {\r
  position: absolute;\r
  left: 200px;\r
  z-index:9999;\r
  display: none;\r
}\r
#place img {\r
  width:500px;\r
}\r
",
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
\t  console.log(ret);\r
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
"id":"noryo2013_timetable_header",
"class":"",
"body":"<nav><div class=\"nav\" role=\"navigation\">\r
  <ul>\r
    <li><a href=\"<?cs var:C._base ?>/noryo2013/top\">TOP</a></li>\r
    <li><a href=\"<?cs var:C._base ?>/noryo2013/about\">\u3082\u3093\u3054\u796d\u308a</a></li>\r
    <li><a href=\"<?cs var:C._base ?>/noryo2013/place\">\u4f1a\u5834\u6848\u5185</a></li>\r
    <li><a href=\"<?cs var:C._base ?>/noryo2013/exhibition\">\u5c55\u793a\u6848\u5185</a></li>\r
    <li><a href=\"<?cs var:C._base ?>/noryo2013/timetable\">\u30bf\u30a4\u30e0\u30c6\u30fc\u30d6\u30eb</a></li>\r
<?cs if:S.login.writable ?>\r
    <li><a href=\"<?cs var:C._base ?>/noryo2013/edit\">EDIT</a></li>\r
<?cs /if ?>\r
  </ul>\r
</div></nav>\r
<br clear=\"both\" />\r
\r
<?cs def:draw_details(raw) ?>\r
<div class=\"details\">\r
<?cs each: item = A.mongo.timeboxs.raw ?>\r
 <div class=\"detail\" u=\"<?cs var:item._u ?>\">\r
 <div class=\"close\"></div>\r
 <?cs if:item.images.logo ?>\r
   <img class=\"logo\" src=\"/_s_/mongo/timetable/<?cs var:item.images.logo ?>\"></img><br>\r
  <?cs /if ?>\r
{\r
  <table>\r
  <tbody>\r
   <tr>\r
    <td class=\"key\"><span class=\"q\">\"</span>\u30bf\u30a4\u30c8\u30eb<span class=\"q\">\"</span></td><td class=\"sep\">:</td><td class=\"value title\"><span class=\"q\">\"</span><?cs var:item.title ?><span class=\"q\">\"</span></td><td class=\"comma\">,</td>\r
   </tr><tr>\r
    <td class=\"key\"><span class=\"q\">\"</span>\u767a\u8868\u8005<span class=\"q\">\"</span></td>\u3000<td class=\"sep\">:</td><td class=\"value\"><span class=\"q\">\"</span><?cs var:item.incharge ?><span class=\"q\">\"</span></td>   <td class=\"comma\">,</td>\r
   </tr><tr>\r
    <td class=\"key\"><span class=\"q\">\"</span>\u958b\u59cb\u6642\u523b<span class=\"q\">\"</span></td><td class=\"sep\">:</td><td class=\"value start\"><span class=\"q\">\"</span><?cs var:item.start ?><span class=\"q\">\"</span></td><td class=\"comma\">,</td>\r
   </tr><tr>\r
    <td class=\"key\"><span class=\"q\">\"</span>\u7d42\u4e86\u6642\u523b<span class=\"q\">\"</span></td><td class=\"sep\">:</td><td class=\"value end\"><span class=\"q\">\"</span><?cs var:item.end ?><span class=\"q\">\"</span></td><td class=\"comma\">,</td>\r
   </tr><tr>\r
    <td class=\"key\"><span class=\"q\">\"</span>\u6982\u8981<span class=\"q\">\"</span></td>\u3000\u3000<td class=\"sep\">:</td><td class=\"value\"><span class=\"q\">\"</span><?cs var:item.overview ?><span class=\"q\">\"</span></td><td class=\"comma\">,</td>\r
   </tr><tr>\r
    <td class=\"key\"><span class=\"q\">\"</span>\u30bf\u30a4\u30d7<span class=\"q\">\"</span></td>\u3000<td class=\"sep\">:</td><td class=\"value\"><span class=\"b\">[</span><?cs each: type = item.types ?><span class=\"q\">\"</span><?cs var:type ?><span class=\"q\">\"</span><?cs if:!last(type) ?>,<?cs /if ?><?cs /each ?><span class=\"b\">]</span></td><td class=\"comma\">,</td>\r
   </tr><tr>\r
    <td class=\"key\"><span class=\"q\">\"</span>\u5bfe\u8c61<span class=\"q\">\"</span></td>\u3000\u3000<td class=\"sep\">:</td><td class=\"value\"><span class=\"b\">[</span><?cs each: target = item.targets ?><span class=\"q\">\"</span><?cs var:target ?><span class=\"q\">\"</span><?cs if:!last(target) ?><span class=\"c\">,</span> <?cs /if ?><?cs /each ?><span class=\"b\">]</span></td><td class=\"comma\">,</td>\r
   </tr>\r
 </tbody>\r
 </table>\r
}\r
<hr class=\"sep\" />\r
<div class=\"page\">\r
<?cs each: content = item.contents ?>\r
 <?cs call:drawTags(content)?>\r
<?cs /each ?>\r
</div>\r
</div>\r
<?cs /each ?>\r
</div>\r
<?cs /def ?>",
"action":[
""
],
"header":"",
"bottom":"",
"_u":"noryo2013/timetable/header"
}
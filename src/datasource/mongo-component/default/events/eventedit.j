{
"@R":"1398444418",
"type":"HorizontalWidget",
"subject":"eventedit",
"description":"",
"css":"#eventedit th {\r
  font-size: 0.8em;\r
  line-height: 0.8;\r
}\r
#eventedit th.public,\r
#eventedit th.event_id,\r
#eventedit th.event_url {\r
  color: #cc0000;\r
  font-size: 1.0em;\r
  font-weight: 700;\r
  line-height: 1.0;\r
}\r
#eventedit input,\r
#eventedit textarea {\r
  font-size: 0.8em;\r
}\r
#eventedit input[type=\"text\"] {\r
  width : 500px;\r
}\r
#eventedit textarea {\r
  width  : 500px;\r
  height : 100px;\r
}\r
\r
#eventedit input[name=\"op\"][value=\"remove\"] {\r
  float: right;\r
  font-weight: 600;\r
}\r
",
"js":"$(function() {\r
  if ( $('form input[name=\"event_id\"]').val() ) {\r
    $('form input[type=\"submit\"]').removeAttr(\"disabled\");\r
  }else{\r
    $('form input[type=\"submit\"]').attr(\"disabled\",\"disabled\");\r
    $('form input').removeAttr('readonly');\r
  }\r
  function setfield(event){\r
      $('form input[name=\"event_id\"]').val(event.id);\r
      $('form input[name=\"event_url\"]').val(event.public_url);\r
      $('form input[name=\"title\"]').val(event.title);\r
      // $('form input[name=\"subtitle\"]').val(event.description);\r
      $('form input[name=\"address\"]').val(event.address);\r
      $('form input[name=\"place\"]').val(event.venue_name);\r
    var date = '';\r
    if ( event.starts_at ) {\r
      var dd = new Date(event.starts_at);\r
      var m = (dd.getMonth()+1);\r
      m = (m<10)?('0'+m):m;\r
      var d = dd.getDate();\r
      d = (d<10)?('0'+d):d;\r
      date = (dd.getYear()+1900)+'/'+m+'/'+dd.getDate();\r
    }\r
      $('form input[name=\"date\"]').val(date);\r
      $('form input[name=\"limit\"]').val(event.ticket_limit);\r
    if ( event.id ) {\r
      $('form input[type=\"submit\"]').removeAttr('disabled');\r
    }else{\r
      $('form input[type=\"submit\"]').attr('disabled','disabled');\r
    }\r
  }\r
\r
  function getevent(event_id){\r
    setfield({});\r
    var apiurl = 'http://api.doorkeeper.jp/events/' + event_id;\r
      $.ajax({\r
\turl: apiurl,\r
\ttype: 'GET',\r
\tdataType: 'jsonp',\r
\tsuccess: function(data){\r
\t  setfield(data.event);\r
\t}\r
      });\r
  }\r
\r
    $('#eventedit input[name=\"event_id\"]').change(function(){\r
      var event_id = $(this).val();\r
      getevent(event_id);\r
    });\r
    $('#eventedit input[name=\"event_url\"]').change(function(){\r
      var url = $(this).val();\r
      if ( url ) {\r
\tvar matcher =/\\/([^\\/]+)$/.exec(url);\r
\tif ( matcher ) {\r
          getevent(matcher[1]);\r
\t}\r
      }\r
    });\r
});\r
$(function() {\r
  $('#eventedit input[name=\"date\"]').datepicker({'dateFormat':'yy-mm-dd'} );\r
  $('#eventedit input[name=\"capacity\"]').change(function(){\r
    var v = $(this).val();\r
    $(this).prev('div').remove();\r
    if ( v < N_ATTENDERS ) {\r
      $(this).parents('form').find('input[type=\"submit\"]').attr('disabled','disabled');\r
      $(this).before('<div style=\"color:red\">\u73fe\u53c2\u52a0\u8005\u6570\u3088\u308a\u5c11\u306a\u3044\u6307\u5b9a\u306f\u3067\u304d\u307e\u305b\u3093</div>');\r
    }else {\r
      $(this).parents('form').find('input[type=\"submit\"]').removeAttr('disabled');\r
    }\r
  });\r
});",
"id":"eventedit",
"class":"",
"body":"<?cs if: A.mongo.event.writable ?>\r
<h2>input DOORKEEPER URL</h2>\r
<form method=\"POST\" action=\"<?cs var:C._base ?>/events/edit/<?cs var:A.mongo.event._u ?>\">\r
  <table><tbody>\r
    <tr>\r
    <th class=\"public\">\u516c\u958b</th>\r
    <td><input type=\"checkbox\" name=\"public\" <?cs if:A.mongo.event.public ?>checked<?cs /if ?>></input></td>\r
    </tr><tr>\r
    <th class=\"event_url\">Event URL</th>\r
    <td><input type=\"text\" name=\"event_url\" value=\"<?cs var:A.mongo.event.event_url ?>\"></input></td>\r
    </tr><tr>\r
    <th class=\"event_id\">Event ID</th>\r
    <td><input type=\"text\" name=\"event_id\" value=\"<?cs var:A.mongo.event.event_id ?>\"></input></td>\r
    </tr><tr>\r
    <th>\u30bf\u30a4\u30c8\u30eb</th>\r
    <td class=\"title\"><input type=\"text\" name=\"title\" readonly=\"readonly\" value=\"<?cs var:A.mongo.event.title ?>\"></input></td>\r
    </tr><tr>\r
    <th>\u30b5\u30d6\u30bf\u30a4\u30c8\u30eb</th>\r
    <td class=\"catch\"><input type=\"text\" name=\"subtitle\" readonly=\"readonly\" value=\"<?cs var:A.mongo.event.subtitle ?>\"></input></td>\r
    </tr><tr>\r
    <th>\u958b\u50ac\u65e5</th>\r
    <td class=\"started_at\"><input type=\"text\" name=\"date\" readonly=\"readonly\" value=\"<?cs var:A.mongo.event.date ?>\"></input></td>\r
    </tr><tr>\r
    </tr><tr>\r
    <th>\u4f1a\u5834\uff08\u4f4f\u6240\uff09</th>\r
    <td class=\"address\"><input type=\"text\" name=\"address\" readonly=\"readonly\" value=\"<?cs var:A.mongo.event.address ?>\"></input></td>\r
    </tr><tr>\r
    <th>\u4f1a\u5834\u540d</th>\r
    <td class=\"place\"><input type=\"text\" name=\"place\" readonly=\"readonly\" value=\"<?cs var:A.mongo.event.place ?>\"></input></td>\r
    </tr><tr>\r
    <th>\u5b9a\u54e1</th>\r
    <td class=\"limit\"><input type=\"text\" name=\"limit\" readonly=\"readonly\" value=\"<?cs var:A.mongo.event.limit ?>\"></input></td>\r
    </tr><tr>\r
    <th></th>\r
    <td>\r
    <input type=\"hidden\" name=\"_u\" value=\"<?cs var:A.mongo.event._u ?>\"></input>\r
    <input type=\"submit\" name=\"op\" value=\"preview\"></input>\r
    <input type=\"submit\" name=\"op\" value=\"save\"></input>\r
    <a target=\"_blank\" href=\"<?cs var:C._base ?>/notation\">notation</a>\r
    <input type=\"submit\" name=\"op\" value=\"remove\"></input>\r
    </td>\r
    </tr>\r
  </tbody></table>\r
</form>\r
<script>\r
<?cs set: a = #0 ?><?cs each:item = A.mongo.event.attenders ?><?cs set: a = a+#1 ?><?cs /each ?>\r
var N_ATTENDERS=<?cs var:a ?>;\r
</script>\r
<?cs /if ?>\r
",
"action":[
""
],
"header":"<link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"/_s_/core/default/css/smoothness/jquery-ui-1.8.21.custom.css\"></link>",
"bottom":"<script src=\"/_s_/core/default/js/jquery-ui-1.8.21.custom.min.js\"></script>",
"_u":"events/eventedit"
}
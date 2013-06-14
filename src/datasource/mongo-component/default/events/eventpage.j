{
"@R":"1371110590",
"type":"HorizontalWidget",
"subject":"eventpage",
"description":"",
"css":"\r
#eventpage table.details {\r
  padding: 15px 0 0 10px;\r
  min-width: 600px;\r
  float:left;\r
}\r
#eventpage table.details th {\r
  min-width: 100px;\r
}\r
\r
#map {\r
  float:left;\r
  height: 200px;\r
  width: 200px;\r
  border: 1px solid #333;\r
  margin-top: 0.6em;\r
}",
"js":"// map\r
$(function(){\r
  var map;\r
  var infowindow;\r
  var pyrmont;\r
  function initialize() {\r
    var addr = $('#addr').text();\r
    var geocoder = new google.maps.Geocoder();\r
    geocoder.geocode({ address: addr,  region:'jp' },function(results,status){\r
      if (status == google.maps.GeocoderStatus.OK) {\r
\tvar latlng = results[0].geometry.location;\r
\tvar lng = latlng.lng();\r
\tvar lat = latlng.lat();\r
\tpyrmont = latlng;\r
\tmap = new google.maps.Map(document.getElementById('map'), {\r
\t  mapTypeId: google.maps.MapTypeId.ROADMAP,\r
\t  center: pyrmont,\r
\t  zoom: 17\r
\t});\r
\tvar marker = new google.maps.Marker({\r
\t  map: map,\r
\t  position: pyrmont\r
\t});\r
      }\r
    });\t\r
  }\r
  initialize();\r
});",
"id":"eventpage",
"class":"uppage",
"body":"<h1><?cs var:A.mongo.event.title?></h1>\r
<div><?cs var:A.mongo.event.subtitle?></div>\r
<table class=\"details\"><tbody>\r
<tr>\r
<th>event URL</th>\r
<td><a href=\"<?cs var:A.mongo.event.event_url ?>\"><?cs var:A.mongo.event.event_url ?></a></td>\r
</tr><tr>\r
<th>\u958b\u50ac\u65e5</th>\r
<td><?cs var:A.mongo.event.date?></td>\r
</tr><tr>\r
<th>\u4f1a\u5834\uff08\u4f4f\u6240\uff09</th>\r
<td id=\"addr\"><?cs var:A.mongo.event.address?></td>\r
</tr><tr>\r
<th>\u4f1a\u5834</th>\r
<td id=\"place\"><?cs var:A.mongo.event.place?></td>\r
</tr><tr>\r
<th>\u5b9a\u54e1</th>\r
<td><?cs var:A.mongo.event.limit?>\u4eba</td>\r
</tr>\r
</tbody></table>\r
<div id=\"map\"></div>\r
<br clear=\"both\">\r
<?cs if:A.mongo.event.writable ?>\r
  <div class=\"edit\"><a href=\"<?cs var:C._base ?>/events/edit/<?cs var:A.mongo.event._u ?>\">\u7de8\u96c6</a></div>\r
<?cs /if ?>\r
",
"action":[
""
],
"header":"<link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"/_s_/mongo/default/css/up.css\" />\r
",
"bottom":"<script src=\"https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places\"></script>",
"_u":"events/eventpage"
}
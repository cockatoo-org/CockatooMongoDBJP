{
"@R":"1364451573",
"type":"HorizontalWidget",
"subject":"login",
"description":"login",
"css":"#login form {\r\n  display:inline;\r\n}\r\n#login {\r\n  text-align:center;\r\n}\r\n#login div.input {\r\n    text-align: left;\r\n}\r\n#login div.input > h6 {\r\n    margin:0;\r\n    padding:0;\r\n    text-align: left;\r\n    width: 80px;\r\n}\r\n#login  div.user {\r\n\/*   float: right;  *\/\r\n}\r\n#login  div.user > span {\r\n\/*  color: blue; *\/\r\n}\r\n\r\n#login h5 {\r\n  margin: 0 0 0 0;\r\n  padding: 0 2px 0 2px;\r\n  font-size: 1.2em;\r\n}\r\n#login div.input > input[type=\"text\"],\r\n#login div.input > input[type=\"password\"] {\r\n    margin: 0 0 0 0;\r\n    padding: 0 0 0 0;\r\n    position: relative;\r\n    text-align: left;\r\n    width: 180px;\r\n }\r\n\r\n\r\n#login div.oauth div {\r\n  border-radius: 4px;\r\n  border-style: solid;\r\n  border-width: 1px;\r\n\/\/  border-color: #2020cc;\r\n  margin: 5px auto;\r\n  padding: 5px;\r\n  width: 300px;\r\n}\r\n#login div.oauth div a {\r\n  font-size: 1.8em;\r\n}\r\n\r\n#login div.oauth img {\r\n  height:16px;\r\n  width:16px;\r\n}\r\n#login div.admin {\r\n  float: right;\r\n  padding: 5px;\r\n  width: 200px;\r\n}\r\n#login div.admin a.admin {\r\n  cursor: pointer;\r\n}\r\n#login div.admin form {\r\n  display: none;\r\n}",
"js":"$(function(){\r\n  $('#login div.admin a.admin').click(function(ev){\r\n    $(this).next('form').slideToggle();\r\n  });\r\n});",
"id":"login",
"class":"",
"body":"<?cs if: S.login.user ?>\r\n<div class=\"window\">\r\n <div class=\"user\">\r\n   Welcome <span><?cs var:S.login.user ?><\/span>\r\n <div>\r\n<!--\r\n <form method=\"POST\" action=\"<?cs var:C._base ?>\/profile\">\r\n   <?cs if:?S._g.r ?>\r\n   <input name=\"r\" type=\"hidden\" value=\"<?cs var:S._g.r ?>\" \/>\r\n   <?cs \/if ?> \r\n   <input name=\"submit\" type=\"submit\" value=\"logout\" \/>\r\n <\/form>\r\n <form method=\"GET\" action=\"<?cs var:C._base ?>\/profile\">\r\n   <?cs if:?S._g.r ?>\r\n   <input name=\"r\" type=\"hidden\" value=\"<?cs var:S._g.r ?>\" \/>\r\n   <?cs \/if ?> \r\n   <input name=\"submit\" type=\"submit\" value=\"profile\" \/>\r\n <\/form>\r\n-->\r\n <\/div>\r\n<?cs if: S.login.root ?>\r\n<a id=\"reset\" href=\"<?cs var:C._base ?>\/admin\">admin tool<\/a>\r\n<?cs \/if ?>\r\n <\/div>\r\n<\/div>\r\n<?cs else ?>\r\n<div class=\"window\">\r\n  <div class=\"oauth\">\r\n  <div class=\"twitter\">\r\n  <a href=\"<?cs var:C._base ?>\/logintwitter?r=<?cs if:S._g.r ?><?cs var:S._g.r ?><?cs else ?><?cs var:S._r._eurl ?><?cs \/if ?>\"><img src=\"\/_s_\/core\/default\/twitter.gif\" alt=\"twitter oauth\"><\/img> Twitter\u3067\u30ed\u30b0\u30a4\u30f3<\/a>\r\n  <\/div>\r\n  <div class=\"google\">  \r\n  <a href=\"<?cs var:C._base ?>\/logingoogle?r=<?cs if:S._g.r ?><?cs var:S._g.r ?><?cs else ?><?cs var:S._r._eurl ?><?cs \/if ?>\"><img src=\"\/_s_\/core\/default\/google.gif\" alt=\"google oauth\"><\/img> Google\u3067\u30ed\u30b0\u30a4\u30f3<\/a>\r\n  <\/div>\r\n  <\/div>\r\n  <div class=\"admin\">\r\n  <a class=\"admin\">\u7ba1\u7406\u8005\u30c4\u30fc\u30eb<\/a>\r\n  <form method=\"POST\" action=\"<?cs var:C._base ?>\/profile?r=<?cs if:S._g.r ?><?cs var:S._g.r ?><?cs else ?><?cs var:S._r._eurl ?><?cs \/if ?>\">\r\n   <div class=\"input\"><h6>User<\/h6> <input name=\"user\" type=\"text\" value=\"\" \/><\/div>\r\n   <div class=\"input\"><h6>Password<\/h6> <input name=\"passwd\" type=\"password\" value=\"\" \/><\/div>\r\n   <?cs if:?S._g.r ?>\r\n   <div class=\"input\"><input name=\"r\" type=\"hidden\" value=\"<?cs var:S._g.r ?>\" \/><\/div>\r\n   <?cs \/if ?> \r\n   <div class=\"input\"> <input name=\"submit\" type=\"submit\" value=\"login\" \/><input name=\"submit\" type=\"submit\" value=\"password reset\" \/><\/div>\r\n  <\/form>\r\n  <\/div>\r\n<\/div>\r\n<?cs \/if ?>\r\n",
"action":[
""
],
"header":"",
"bottom":"",
"_u":"login\/login"
}
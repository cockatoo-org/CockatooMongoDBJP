{
"public":true,
"title":"MongoDB2.4 \u30ea\u30ea\u30fc\u30b9\uff08\u548c\u8a33\uff09",
"origin":">\u539f\u6587 ( &a(http://blog.mongodb.org/post/45754637343/mongodb-2-4-released){MongoDB 2.4 released})\r
\r
*\u548c\u8a33\r
MongoDB2.4\u30ea\u30ea\u30fc\u30b9\u306e\u30a2\u30ca\u30a6\u30f3\u30b9\u304c\u3067\u304d\u308b\u4e8b\u3092\u559c\u3070\u3057\u304f\u601d\u3044\u307e\u3059\u3002\r
\u3053\u308c\u306f2012\u5e749\u6708\u306eMongoDB2.2\u306b\u7d9a\u304f\u3001\u6700\u65b0\u306e\u5b89\u5b9a\u7248\u30ea\u30ea\u30fc\u30b9\u3067\u3059\u3002\r
\u3053\u306e\u30ea\u30ea\u30fc\u30b9\u3067\u306f\u30d1\u30d5\u30a9\u30fc\u30de\u30f3\u30b9\u306b\u95a2\u3059\u308b\u91cd\u8981\u306a\u6a5f\u80fd\u3068\u30d0\u30b0\u30d5\u30a3\u30c3\u30af\u30b9\u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059\u3002\r
\u3053\u3053\u3067\u306f\u3053\u308c\u7b49\u306e\u6a5f\u80fd\u306e\u6982\u8981\u3092\u8aac\u660e\u3057\u307e\u3059\u3002\r
\r
\u307e\u305f\u30ea\u30ea\u30fc\u30b9\u306b\u95a2\u3059\u308b\u8a73\u7d30\u306f\u4ee5\u4e0b\u3092\u53c2\u7167\u3057\u3066\u304f\u3060\u3055\u3044\u3002\r
-&a(http://docs.mongodb.org/manual/release-notes/2.4/){2.4 release notes}\r
-&a(http://www.mongodb.org/downloads){MongoDB Downloads}    \r
-&a(http://www.10gen.com/events/webinar/mongodb-24-webinar-series){MongoDB 2.4 webinars}\r
** MongoDB2.4 \u65b0\u6a5f\u80fd\r
-Hash-based Sharding\r
-Capped Arrays\r
-Text Search (Beta)\r
-Geospatial Enhancements\r
-Faster Counts\r
-Working Set Analyzer\r
-V8 JavaScript engine\r
-Security\r
***Hash-based Sharding\r
MongoDB 2.4 \u3067\u306f\u4eca\u307e\u3067\u306e\u7bc4\u56f2\u30d9\u30fc\u30b9Sharding\u306b\u52a0\u3048\u30cf\u30c3\u30b7\u30e5\u30d9\u30fc\u30b9\u306eSharding\u304c\u8ffd\u52a0\u3055\u308c\u307e\u3057\u305f\u3002\r
\u30cf\u30c3\u30b7\u30e5\u30d9\u30fc\u30b9shard key\u3067\u306f\u3001\u30ad\u30fc\u306b\u5bfe\u3057\u3066\u30e9\u30f3\u30c0\u30e0\u306a\u30c7\u30fc\u30bf\u30a2\u30af\u30bb\u30b9\u3084\u4e88\u6e2c\u4e0d\u53ef\u80fd\u306a\u30d1\u30bf\u30fc\u30f3\u306e\u30a2\u30af\u30bb\u30b9\u306b\u5bfe\u3057\u3066\u3082\r
\u52b9\u7387\u306e\u826f\u3044\u30c7\u30fc\u30bf\u914d\u7f6e\u3092\u7c21\u5358\u306b\u5b9f\u73fe\u3067\u304d\u307e\u3059\u3002\r
\r
***Capped Arrays\r
\u30c9\u30ad\u30e5\u30e1\u30f3\u30c8\u5185\u306b\u56fa\u5b9a\u9577\u306e\u914d\u5217\u3092\u5ba3\u8a00\u3067\u304d\u307e\u3059\u3002\r
\u3053\u306e\u914d\u5217\u306b\u306f\u3001$push\u3001N\u500b\u306e\u7d42\u7aef\u3092\u53d6\u308a\u51fa\u3059$slice\u3001\u30bd\u30fc\u30c8\u6307\u5b9a\u3001\u30bd\u30fc\u30c8\u5f8c\u306e$slice\u306e\u51e6\u7406\u304c\u51fa\u6765\u307e\u3059\u3002\r
\r
\r
***Text Search\r
\u6587\u66f8\u30b5\u30fc\u30c1\u306fMongoDB\u306b\u6700\u3082\u6c42\u3081\u3089\u308c\u3066\u3044\u305f\u6a5f\u80fd\u306e\u4e00\u3064\u3067\u3059\u3002\r
15\u8a00\u8a9e\u306e\u8a9e\u5e79\u51e6\u7406\u3001\u30c8\u30fc\u30af\u30f3\u5206\u5272\u51e6\u7406\u542b\u3080\u30a4\u30f3\u30c7\u30c3\u30af\u30b9\u3092\u30ea\u30a2\u30eb\u30bf\u30a4\u30e0\u306b\u69cb\u7bc9\u3067\u304d\u307e\u3059\u3002\r
\u3053\u306e\u6a5f\u80fd\u3084\u5b9f\u88c5\u306e\u3088\u308a\u8a73\u7d30\u306f\u30c9\u30ad\u30e5\u30e1\u30f3\u30c8\u3068&a(http://blog.mongodb.org/post/40513621310/mongodb-text-search-experimental-feature-in-mongodb){\u30d6\u30ed\u30b0}\u3092\u53c2\u7167\u3057\u3066\u304f\u3060\u3055\u3044\u3002\r
\r
\r
***Geo Capabilities\r
MongoDB 2.4\u306fGeoJSON\u3092\u30b5\u30dd\u30fc\u30c8\u3057\u307e\u3057\u305f\u3002\r
\u3088\u308a\u7cbe\u5bc6\u306a\u7403\u9762\u30e2\u30c7\u30eb\u3084\u591a\u89d2\u5f62\u306e\u4ea4\u70b9\u3092\u6c42\u3081\u308b\u4e8b\u304c\u3067\u304d\u307e\u3059\u3002\r
\u73fe\u5728\u3001\u70b9\u3001\u7dda\u3001\u591a\u89d2\u5f62\u3092\u51e6\u7406\u3067\u304d\u308b\u5730\u7406\u7a7a\u9593\uff08\u7403\u9762\uff09\u30a4\u30f3\u30c7\u30c3\u30af\u30b9\u3092\u30b5\u30dd\u30fc\u30c8\u3057\u3066\u3044\u307e\u3059\u3002\r
\r
\r
***Faster Counts\r
\u591a\u304f\u306e\u5834\u5408\u3067MongoDB 2.4\u3067\u306e\u30ab\u30a6\u30f3\u30c8\u51e6\u7406\u306f\u4ee5\u524d\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u3088\u308a\u6841\u5916\u308c\u306b\u65e9\u304f\u306a\u308a\u307e\u3057\u305f\u3002\r
\u6211\u3005\u306f\u30af\u30a8\u30ea\u30fc\u30a8\u30f3\u30b8\u30f3\u306b\u4e00\u822c\u7684\u306a\u30a2\u30af\u30bb\u30b9\u30d1\u30bf\u30fc\u30f3\u3092\u30bf\u30fc\u30b2\u30c3\u30c8\u306b\u3057\u305f\u591a\u304f\u306e\u6700\u9069\u5316\u3092\u306b\u884c\u3044\u307e\u3057\u305f\u3002\r
\u4f8b\u3048\u3070single b-tree bucket\u3067\u306f\u3001\u30d0\u30b1\u30c3\u30c8\u306e\u6700\u521d\u3068\u6700\u5f8c\u306e\u30a8\u30f3\u30c8\u30ea\u30fc\u304c\u5171\u306b\u691c\u7d22\u7bc4\u56f2\u5185\u306a\u3089\u3070\r
\u30d0\u30b1\u30c3\u30c8\u5185\u306e\u5168\u3066\u306e\u30a8\u30f3\u30c8\u30ea\u30fc\u306f\u691c\u7d22\u7bc4\u56f2\u5185\u3067\u3042\u308a\u4e2d\u8eab\u3092\u500b\u3005\u306b\u8a55\u4fa1\u3059\u308b\u5fc5\u8981\u306f\u3042\u308a\u307e\u305b\u3093\u3002\r
\r
\r
***Working Set Analyzer\r
\u5bb9\u91cf\u8a08\u753b\u306fMongoDB\u30af\u30e9\u30b9\u30bf\u904b\u7528\u306b\u5fc5\u9808\u3067\u3059\u3002\r
MongoDB2.4 \u3067\u306f\u30ef\u30fc\u30ad\u30f3\u30b0\u30bb\u30c3\u30c8\u30b5\u30a4\u30ba\u30a2\u30ca\u30e9\u30a4\u30b6\u30fc\u304c\u8ffd\u52a0\u3055\u308c\u307e\u3057\u305f\u3002\r
\u30ea\u30bd\u30fc\u30b9\u4f7f\u7528\u91cf\uff08\uff05\uff09\u3092\u7c21\u5358\u306b\u5f97\u3089\u308c\u307e\u3059\u3002\r
\u307e\u305f\u30b5\u30fc\u30d0\u304c\u6700\u65b0\uff11\uff15\u5206\u9593\u306b\u3069\u306e\u4f4d\u306e\u6570\u306e\uff08\u30c7\u30fc\u30bf\uff09\u30da\u30fc\u30b8\u3092\u5fc5\u8981\u3068\u3057\u3066\u3044\u308b\u304b\uff1f\u3092\u5f97\u308b\u3053\u3068\u304c\u3067\u304d\u307e\u3059\u3002\r
\u6642\u9593\u6bce\u306e\u30ea\u30bd\u30fc\u30b9\u4f7f\u7528\u91cf\u60c5\u5831\u3092\u5f97\u3089\u308c\u308b\u3067\u3057\u3087\u3046\u3002\r
\uff11\uff15\u5206\u9593\u306b\u5fc5\u8981\u306a\u30c7\u30fc\u30bf\u91cf\u304c\u642d\u8f09\u30e1\u30e2\u30ea\u30fc\u91cf\u306b\u8fd1\u304f\u306a\u3063\u3066\u304d\u305f\u3089\u3001\u305d\u308d\u305d\u308d\u5897\u5f37\u304c\u5fc5\u8981\u304b\u3082\u3057\u308c\u307e\u305b\u3093\u3002\r
\r
\r
***New V8 Engine\r
MongoDB 2.4 \u306fJavaScript\u30a8\u30f3\u30b8\u30f3\u3092V8\u306b\u5909\u66f4\u3057\u307e\u3057\u305f\u3002\r
\u3053\u308c\u306fMapReduce\u3001$where\u3001\u30b7\u30a7\u30eb\u306a\u3069\u3067\u4f7f\u308f\u308c\u307e\u3059\u3002V8\u30a8\u30f3\u30b8\u30f3\u306fGoogle Chrome\u7531\u6765\u306e\u3082\u306e\u3067\u3001\u305d\u3061\u3089\u3067\u4e26\u884c\u3057\u3066\u6539\u5584\u3055\u308c\u3066\u3044\u307e\u3059\u3002\r
\r
\r
***Security\r
MongoDB 2.4\u306f\u30b1\u30eb\u30d9\u30ed\u30b9\u8a8d\u8a3c\u3068\u30ed\u30fc\u30eb\u30a2\u30af\u30bb\u30b9\u30b3\u30f3\u30c8\u30ed\u30fc\u30eb\u3068\u3044\u3046\u5927\u304d\u306a\u30bb\u30ad\u30e5\u30ea\u30c6\u30a3\u30fc\u5411\u4e0a\u3092\u884c\u3044\u307e\u3057\u305f\u3002\r
\u30b1\u30eb\u30d9\u30ed\u30b9\u306fMongoDB\u3092\u30a8\u30f3\u30bf\u30fc\u30d7\u30e9\u30a4\u30ba\u30ec\u30d9\u30eb\u306e\u30e6\u30fc\u30b6\u30de\u30cd\u30fc\u30b8\u30e1\u30f3\u30c8\u30b7\u30b9\u30c6\u30e0\u3068\u7d71\u5408\u3059\u308b\u4e8b\u304c\u3067\u304d\u307e\u3059\u3002\r
\u30ed\u30fc\u30eb\u30a2\u30af\u30bb\u30b9\u30b3\u30f3\u30c8\u30ed\u30fc\u30eb\u306f\u3088\u308a\u826f\u3044\u6a29\u9650\u7ba1\u7406\u3092\u53ef\u80fd\u306b\u3057\u307e\u3059\u3002\r
\r
\r
\r
\u6570\u767e\uff08692\uff09\u3082\u306e\u6539\u5584\u70b9\u304c\u3042\u308a&a(https://jira.mongodb.org/secure/IssueNavigator.jspa?reset=true&jqlQuery=project+%3D+SERVER+AND+fixVersion+in+%28%222.3.2%22,+%222.3.1%22,+%222.3.0%22,+%222.4.0-rc0%22,+%222.4.0-rc1%22,+%222.4.0-rc2%22,+%222.4.0-rc3%22%29+ORDER+BY+votes+DESC,+status+DESC,+priority+DESC){changelog}\u3092\u898b\u308b\u4e8b\u3092\u304a\u52e7\u3081\u3057\u307e\u3059\u3002\r
\u3053\u306e\u6587\u9762\u306b\u5165\u308a\u304d\u3089\u306a\u3044\u91cd\u8981\u306a\u5909\u66f4\u70b9\u3082\u3042\u308b\u306e\u3067\u3001\u5225\u306e\u5834\u3067\u8cea\u554f\u3057\u3066\u8cb0\u3048\u308c\u3070\u3068\u601d\u3044\u307e\u3059\u3002\r
MongoDB 2.4\u306b\u306f\u307e\u3060\u591a\u304f\u306eTODO\u304c\u3042\u308a\u300110gen\u30a8\u30f3\u30b8\u30cb\u30a2\u30c1\u30fc\u30e0\u306f\u65e2\u306bMongoDB2.6\u306b\u5411\u3051\u3066\u6d3b\u52d5\u3057\u3066\u3044\u307e\u3059\u3002\r
\r
-&a(http://www.mongodb.org/downloads){Downloads}\r
-&a(http://docs.mongodb.org/manual/release-notes/2.4){Release Notes}\r
-&a(https://jira.mongodb.org/secure/IssueNavigator.jspa?reset=true&jqlQuery=project+%3D+SERVER+AND+fixVersion+in+%28%222.3.2%22,+%222.3.1%22,+%222.3.0%22,+%222.4.0-rc0%22,+%222.4.0-rc1%22,+%222.4.0-rc2%22,+%222.4.0-rc3%22%29+ORDER+BY+votes+DESC,+status+DESC,+priority+DESC){changelog}\r
-MongoDB 2.4\u306e\u65b0\u6a5f\u80fd\uff08Text Search, Geo, Kerberos\uff09\u306b\u3064\u3044\u3066\u306f\u3053\u3061\u3089\u306e&a(http://www.10gen.com/events/webinar/mongodb-24-webinar-series){webinar series}\u3092\u53c2\u7167\u3057\u3066\u304f\u3060\u3055\u3044\u3002\r
\r
\u30d5\u30a3\u30fc\u30c9\u30d0\u30c3\u30af\u3001\u30c6\u30b9\u30c8\u7d50\u679c\u306a\u3069\u304a\u5f85\u3061\u3057\u3066\u304a\u308a\u307e\u3059\u3002\u5f15\u304d\u7d9a\u304dMongoDB\u3092\u3088\u308d\u3057\u304f\u304a\u9858\u3044\u3057\u307e\u3059\u3002\r
\r
Eliot\u3068MongoDB\u30a8\u30f3\u30b8\u30cb\u30a2\u30c1\u30fc\u30e0\u3088\u308a\r
\r
",
"_u":"1364809135515a8d7094daa",
"op":"save",
"contents":[
{
"tag":"div",
"attr":{
"class":"hd1"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":">\u539f\u6587 ( "
}
]
},
{
"tag":"a",
"attr":{
"target":"_blank",
"href":"http://blog.mongodb.org/post/45754637343/mongodb-2-4-released"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB 2.4 released"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":")"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"div",
"attr":{
"class":"h2"
},
"children":[
{
"tag":"h2",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u548c\u8a33"
},
{
"tag":"a",
"attr":{
"href":"#\u548c\u8a33",
"name":"\u548c\u8a33"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd2"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB2.4\u30ea\u30ea\u30fc\u30b9\u306e\u30a2\u30ca\u30a6\u30f3\u30b9\u304c\u3067\u304d\u308b\u4e8b\u3092\u559c\u3070\u3057\u304f\u601d\u3044\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3053\u308c\u306f2012\u5e749\u6708\u306eMongoDB2.2\u306b\u7d9a\u304f\u3001\u6700\u65b0\u306e\u5b89\u5b9a\u7248\u30ea\u30ea\u30fc\u30b9\u3067\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3053\u306e\u30ea\u30ea\u30fc\u30b9\u3067\u306f\u30d1\u30d5\u30a9\u30fc\u30de\u30f3\u30b9\u306b\u95a2\u3059\u308b\u91cd\u8981\u306a\u6a5f\u80fd\u3068\u30d0\u30b0\u30d5\u30a3\u30c3\u30af\u30b9\u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3053\u3053\u3067\u306f\u3053\u308c\u7b49\u306e\u6a5f\u80fd\u306e\u6982\u8981\u3092\u8aac\u660e\u3057\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u307e\u305f\u30ea\u30ea\u30fc\u30b9\u306b\u95a2\u3059\u308b\u8a73\u7d30\u306f\u4ee5\u4e0b\u3092\u53c2\u7167\u3057\u3066\u304f\u3060\u3055\u3044\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"ul",
"attr":{
"class":"ul0"
},
"children":[
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"a",
"attr":{
"target":"_blank",
"href":"http://docs.mongodb.org/manual/release-notes/2.4/"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"2.4 release notes"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":false
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"a",
"attr":{
"target":"_blank",
"href":"http://www.mongodb.org/downloads"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB Downloads"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"    "
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"a",
"attr":{
"target":"_blank",
"href":"http://www.10gen.com/events/webinar/mongodb-24-webinar-series"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB 2.4 webinars"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":false
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"h3"
},
"children":[
{
"tag":"h3",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB2.4 \u65b0\u6a5f\u80fd"
},
{
"tag":"a",
"attr":{
"href":"#MongoDB2.4 \u65b0\u6a5f\u80fd",
"name":"MongoDB2.4 \u65b0\u6a5f\u80fd"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd3"
},
"children":[
{
"tag":"ul",
"attr":{
"class":"ul0"
},
"children":[
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Hash-based Sharding"
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Capped Arrays"
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Text Search (Beta)"
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Geospatial Enhancements"
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Faster Counts"
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Working Set Analyzer"
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"V8 JavaScript engine"
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Security"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"h4"
},
"children":[
{
"tag":"h4",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Hash-based Sharding"
},
{
"tag":"a",
"attr":{
"href":"#Hash-based Sharding",
"name":"Hash-based Sharding"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB 2.4 \u3067\u306f\u4eca\u307e\u3067\u306e\u7bc4\u56f2\u30d9\u30fc\u30b9Sharding\u306b\u52a0\u3048\u30cf\u30c3\u30b7\u30e5\u30d9\u30fc\u30b9\u306eSharding\u304c\u8ffd\u52a0\u3055\u308c\u307e\u3057\u305f\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30cf\u30c3\u30b7\u30e5\u30d9\u30fc\u30b9shard key\u3067\u306f\u3001\u30ad\u30fc\u306b\u5bfe\u3057\u3066\u30e9\u30f3\u30c0\u30e0\u306a\u30c7\u30fc\u30bf\u30a2\u30af\u30bb\u30b9\u3084\u4e88\u6e2c\u4e0d\u53ef\u80fd\u306a\u30d1\u30bf\u30fc\u30f3\u306e\u30a2\u30af\u30bb\u30b9\u306b\u5bfe\u3057\u3066\u3082"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u52b9\u7387\u306e\u826f\u3044\u30c7\u30fc\u30bf\u914d\u7f6e\u3092\u7c21\u5358\u306b\u5b9f\u73fe\u3067\u304d\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
}
]
},
{
"tag":"div",
"attr":{
"class":"h4"
},
"children":[
{
"tag":"h4",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Capped Arrays"
},
{
"tag":"a",
"attr":{
"href":"#Capped Arrays",
"name":"Capped Arrays"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30c9\u30ad\u30e5\u30e1\u30f3\u30c8\u5185\u306b\u56fa\u5b9a\u9577\u306e\u914d\u5217\u3092\u5ba3\u8a00\u3067\u304d\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3053\u306e\u914d\u5217\u306b\u306f\u3001$push\u3001N\u500b\u306e\u7d42\u7aef\u3092\u53d6\u308a\u51fa\u3059$slice\u3001\u30bd\u30fc\u30c8\u6307\u5b9a\u3001\u30bd\u30fc\u30c8\u5f8c\u306e$slice\u306e\u51e6\u7406\u304c\u51fa\u6765\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
}
]
},
{
"tag":"div",
"attr":{
"class":"h4"
},
"children":[
{
"tag":"h4",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Text Search"
},
{
"tag":"a",
"attr":{
"href":"#Text Search",
"name":"Text Search"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u6587\u66f8\u30b5\u30fc\u30c1\u306fMongoDB\u306b\u6700\u3082\u6c42\u3081\u3089\u308c\u3066\u3044\u305f\u6a5f\u80fd\u306e\u4e00\u3064\u3067\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"15\u8a00\u8a9e\u306e\u8a9e\u5e79\u51e6\u7406\u3001\u30c8\u30fc\u30af\u30f3\u5206\u5272\u51e6\u7406\u542b\u3080\u30a4\u30f3\u30c7\u30c3\u30af\u30b9\u3092\u30ea\u30a2\u30eb\u30bf\u30a4\u30e0\u306b\u69cb\u7bc9\u3067\u304d\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3053\u306e\u6a5f\u80fd\u3084\u5b9f\u88c5\u306e\u3088\u308a\u8a73\u7d30\u306f\u30c9\u30ad\u30e5\u30e1\u30f3\u30c8\u3068"
}
]
},
{
"tag":"a",
"attr":{
"target":"_blank",
"href":"http://blog.mongodb.org/post/40513621310/mongodb-text-search-experimental-feature-in-mongodb"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30d6\u30ed\u30b0"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3092\u53c2\u7167\u3057\u3066\u304f\u3060\u3055\u3044\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
}
]
},
{
"tag":"div",
"attr":{
"class":"h4"
},
"children":[
{
"tag":"h4",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Geo Capabilities"
},
{
"tag":"a",
"attr":{
"href":"#Geo Capabilities",
"name":"Geo Capabilities"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB 2.4\u306fGeoJSON\u3092\u30b5\u30dd\u30fc\u30c8\u3057\u307e\u3057\u305f\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3088\u308a\u7cbe\u5bc6\u306a\u7403\u9762\u30e2\u30c7\u30eb\u3084\u591a\u89d2\u5f62\u306e\u4ea4\u70b9\u3092\u6c42\u3081\u308b\u4e8b\u304c\u3067\u304d\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u73fe\u5728\u3001\u70b9\u3001\u7dda\u3001\u591a\u89d2\u5f62\u3092\u51e6\u7406\u3067\u304d\u308b\u5730\u7406\u7a7a\u9593\uff08\u7403\u9762\uff09\u30a4\u30f3\u30c7\u30c3\u30af\u30b9\u3092\u30b5\u30dd\u30fc\u30c8\u3057\u3066\u3044\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
}
]
},
{
"tag":"div",
"attr":{
"class":"h4"
},
"children":[
{
"tag":"h4",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Faster Counts"
},
{
"tag":"a",
"attr":{
"href":"#Faster Counts",
"name":"Faster Counts"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u591a\u304f\u306e\u5834\u5408\u3067MongoDB 2.4\u3067\u306e\u30ab\u30a6\u30f3\u30c8\u51e6\u7406\u306f\u4ee5\u524d\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u3088\u308a\u6841\u5916\u308c\u306b\u65e9\u304f\u306a\u308a\u307e\u3057\u305f\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u6211\u3005\u306f\u30af\u30a8\u30ea\u30fc\u30a8\u30f3\u30b8\u30f3\u306b\u4e00\u822c\u7684\u306a\u30a2\u30af\u30bb\u30b9\u30d1\u30bf\u30fc\u30f3\u3092\u30bf\u30fc\u30b2\u30c3\u30c8\u306b\u3057\u305f\u591a\u304f\u306e\u6700\u9069\u5316\u3092\u306b\u884c\u3044\u307e\u3057\u305f\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u4f8b\u3048\u3070single b-tree bucket\u3067\u306f\u3001\u30d0\u30b1\u30c3\u30c8\u306e\u6700\u521d\u3068\u6700\u5f8c\u306e\u30a8\u30f3\u30c8\u30ea\u30fc\u304c\u5171\u306b\u691c\u7d22\u7bc4\u56f2\u5185\u306a\u3089\u3070"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30d0\u30b1\u30c3\u30c8\u5185\u306e\u5168\u3066\u306e\u30a8\u30f3\u30c8\u30ea\u30fc\u306f\u691c\u7d22\u7bc4\u56f2\u5185\u3067\u3042\u308a\u4e2d\u8eab\u3092\u500b\u3005\u306b\u8a55\u4fa1\u3059\u308b\u5fc5\u8981\u306f\u3042\u308a\u307e\u305b\u3093\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
}
]
},
{
"tag":"div",
"attr":{
"class":"h4"
},
"children":[
{
"tag":"h4",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Working Set Analyzer"
},
{
"tag":"a",
"attr":{
"href":"#Working Set Analyzer",
"name":"Working Set Analyzer"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u5bb9\u91cf\u8a08\u753b\u306fMongoDB\u30af\u30e9\u30b9\u30bf\u904b\u7528\u306b\u5fc5\u9808\u3067\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB2.4 \u3067\u306f\u30ef\u30fc\u30ad\u30f3\u30b0\u30bb\u30c3\u30c8\u30b5\u30a4\u30ba\u30a2\u30ca\u30e9\u30a4\u30b6\u30fc\u304c\u8ffd\u52a0\u3055\u308c\u307e\u3057\u305f\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30ea\u30bd\u30fc\u30b9\u4f7f\u7528\u91cf\uff08\uff05\uff09\u3092\u7c21\u5358\u306b\u5f97\u3089\u308c\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u307e\u305f\u30b5\u30fc\u30d0\u304c\u6700\u65b0\uff11\uff15\u5206\u9593\u306b\u3069\u306e\u4f4d\u306e\u6570\u306e\uff08\u30c7\u30fc\u30bf\uff09\u30da\u30fc\u30b8\u3092\u5fc5\u8981\u3068\u3057\u3066\u3044\u308b\u304b\uff1f\u3092\u5f97\u308b\u3053\u3068\u304c\u3067\u304d\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u6642\u9593\u6bce\u306e\u30ea\u30bd\u30fc\u30b9\u4f7f\u7528\u91cf\u60c5\u5831\u3092\u5f97\u3089\u308c\u308b\u3067\u3057\u3087\u3046\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\uff11\uff15\u5206\u9593\u306b\u5fc5\u8981\u306a\u30c7\u30fc\u30bf\u91cf\u304c\u642d\u8f09\u30e1\u30e2\u30ea\u30fc\u91cf\u306b\u8fd1\u304f\u306a\u3063\u3066\u304d\u305f\u3089\u3001\u305d\u308d\u305d\u308d\u5897\u5f37\u304c\u5fc5\u8981\u304b\u3082\u3057\u308c\u307e\u305b\u3093\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
}
]
},
{
"tag":"div",
"attr":{
"class":"h4"
},
"children":[
{
"tag":"h4",
"attr":[

],
"children":[
{
"tag":"text",
"text":"New V8 Engine"
},
{
"tag":"a",
"attr":{
"href":"#New V8 Engine",
"name":"New V8 Engine"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB 2.4 \u306fJavaScript\u30a8\u30f3\u30b8\u30f3\u3092V8\u306b\u5909\u66f4\u3057\u307e\u3057\u305f\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3053\u308c\u306fMapReduce\u3001$where\u3001\u30b7\u30a7\u30eb\u306a\u3069\u3067\u4f7f\u308f\u308c\u307e\u3059\u3002V8\u30a8\u30f3\u30b8\u30f3\u306fGoogle Chrome\u7531\u6765\u306e\u3082\u306e\u3067\u3001\u305d\u3061\u3089\u3067\u4e26\u884c\u3057\u3066\u6539\u5584\u3055\u308c\u3066\u3044\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
}
]
},
{
"tag":"div",
"attr":{
"class":"h4"
},
"children":[
{
"tag":"h4",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Security"
},
{
"tag":"a",
"attr":{
"href":"#Security",
"name":"Security"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB 2.4\u306f\u30b1\u30eb\u30d9\u30ed\u30b9\u8a8d\u8a3c\u3068\u30ed\u30fc\u30eb\u30a2\u30af\u30bb\u30b9\u30b3\u30f3\u30c8\u30ed\u30fc\u30eb\u3068\u3044\u3046\u5927\u304d\u306a\u30bb\u30ad\u30e5\u30ea\u30c6\u30a3\u30fc\u5411\u4e0a\u3092\u884c\u3044\u307e\u3057\u305f\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30b1\u30eb\u30d9\u30ed\u30b9\u306fMongoDB\u3092\u30a8\u30f3\u30bf\u30fc\u30d7\u30e9\u30a4\u30ba\u30ec\u30d9\u30eb\u306e\u30e6\u30fc\u30b6\u30de\u30cd\u30fc\u30b8\u30e1\u30f3\u30c8\u30b7\u30b9\u30c6\u30e0\u3068\u7d71\u5408\u3059\u308b\u4e8b\u304c\u3067\u304d\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30ed\u30fc\u30eb\u30a2\u30af\u30bb\u30b9\u30b3\u30f3\u30c8\u30ed\u30fc\u30eb\u306f\u3088\u308a\u826f\u3044\u6a29\u9650\u7ba1\u7406\u3092\u53ef\u80fd\u306b\u3057\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u6570\u767e\uff08692\uff09\u3082\u306e\u6539\u5584\u70b9\u304c\u3042\u308a"
}
]
},
{
"tag":"a",
"attr":{
"target":"+%222.3.1%22,+%222.3.0%22,+%222.4.0-rc0%22,+%222.4.0-rc1%22,+%222.4.0-rc2%22,+%222.4.0-rc3%22%29+ORDER+BY+votes+DESC,+status+DESC,+priority+DESC",
"href":"https://jira.mongodb.org/secure/IssueNavigator.jspa?reset=true&jqlQuery=project+%3D+SERVER+AND+fixVersion+in+%28%222.3.2%22"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"changelog"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3092\u898b\u308b\u4e8b\u3092\u304a\u52e7\u3081\u3057\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3053\u306e\u6587\u9762\u306b\u5165\u308a\u304d\u3089\u306a\u3044\u91cd\u8981\u306a\u5909\u66f4\u70b9\u3082\u3042\u308b\u306e\u3067\u3001\u5225\u306e\u5834\u3067\u8cea\u554f\u3057\u3066\u8cb0\u3048\u308c\u3070\u3068\u601d\u3044\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB 2.4\u306b\u306f\u307e\u3060\u591a\u304f\u306eTODO\u304c\u3042\u308a\u300110gen\u30a8\u30f3\u30b8\u30cb\u30a2\u30c1\u30fc\u30e0\u306f\u65e2\u306bMongoDB2.6\u306b\u5411\u3051\u3066\u6d3b\u52d5\u3057\u3066\u3044\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"ul",
"attr":{
"class":"ul0"
},
"children":[
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"a",
"attr":{
"target":"_blank",
"href":"http://www.mongodb.org/downloads"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Downloads"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":false
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"a",
"attr":{
"target":"_blank",
"href":"http://docs.mongodb.org/manual/release-notes/2.4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Release Notes"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":false
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"a",
"attr":{
"target":"+%222.3.1%22,+%222.3.0%22,+%222.4.0-rc0%22,+%222.4.0-rc1%22,+%222.4.0-rc2%22,+%222.4.0-rc3%22%29+ORDER+BY+votes+DESC,+status+DESC,+priority+DESC",
"href":"https://jira.mongodb.org/secure/IssueNavigator.jspa?reset=true&jqlQuery=project+%3D+SERVER+AND+fixVersion+in+%28%222.3.2%22"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"changelog"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":false
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ul1"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB 2.4\u306e\u65b0\u6a5f\u80fd\uff08Text Search, Geo, Kerberos\uff09\u306b\u3064\u3044\u3066\u306f\u3053\u3061\u3089\u306e"
}
]
},
{
"tag":"a",
"attr":{
"target":"_blank",
"href":"http://www.10gen.com/events/webinar/mongodb-24-webinar-series"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"webinar series"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3092\u53c2\u7167\u3057\u3066\u304f\u3060\u3055\u3044\u3002"
}
]
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30d5\u30a3\u30fc\u30c9\u30d0\u30c3\u30af\u3001\u30c6\u30b9\u30c8\u7d50\u679c\u306a\u3069\u304a\u5f85\u3061\u3057\u3066\u304a\u308a\u307e\u3059\u3002\u5f15\u304d\u7d9a\u304dMongoDB\u3092\u3088\u308d\u3057\u304f\u304a\u9858\u3044\u3057\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Eliot\u3068MongoDB\u30a8\u30f3\u30b8\u30cb\u30a2\u30c1\u30fc\u30e0\u3088\u308a"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
}
]
}
]
}
]
}
]
}
],
"_owner":"crumbjp",
"_ownername":"@crumbjp",
"_time":1371775778,
"_timestr":"2013-06-21"
}
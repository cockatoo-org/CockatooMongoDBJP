{
"title":"main",
"origin":"\u5f53\u30b5\u30a4\u30c8\u306f\u65e5\u672c\u306b\u304a\u3051\u308bMongoDB\u306e\u666e\u53ca\u3068\u767a\u5c55\u3092\u76ee\u7684\u306b\u3001&a(mongodbjp){MongoDB JP}\u306b\u3088\u3063\u3066\u904b\u55b6\u3055\u308c\u3066\u3044\u307e\u3059\u3002

* MongoDB\u3068\u306f
MongoDB\u306f&a(http://www.10gen.com/){10gen}\u306b\u3088\u308a\u958b\u767a/\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u308bC++\u3067\u5b9f\u88c5\u3055\u308c\u305f\u30aa\u30fc\u30d7\u30f3\u30bd\u30fc\u30b9\u306e\u30c7\u30fc\u30bf\u30d9\u30fc\u30b9\u3067\u3059\u3002
\u3044\u308f\u3086\u308bNoSQL\u306b\u5206\u985e\u3055\u308c\u308b\u30bf\u30a4\u30d7\u306e\u30c7\u30fc\u30bf\u30d9\u30fc\u30b9\u3067\u5bfe\u969c\u5bb3\u6027\u3068\u30b9\u30b1\u30fc\u30e9\u30d3\u30ea\u30c6\u30a3\u306b\u512a\u308c\u3001\u307e\u305fNoSQL\u3067\u306f\u73cd\u3057\u304f\u30a4\u30f3\u30c7\u30c3\u30af\u30b9\u3092\u30b5\u30dd\u30fc\u30c8\u3057\u3066\u304a\u308a\u8868\u7d50\u5408(JOIN)\u306f\u51fa\u6765\u306a\u3044\u306a\u304c\u3089RDBMS\u306e\u69d8\u306a\u4f7f\u3044\u65b9\u304c\u51fa\u6765\u308b\u4e8b\u3082\u5927\u304d\u306a\u7279\u5fb4\u3067\u3059\u3002

** \u4e3b\u306a\u7279\u5fb4
*** \u8010\u969c\u5bb3\u6027\uff08Durability\uff09
MongoDB\u306f&b(3){\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8}\u3068\u547c\u3070\u308c\u308b\u5197\u9577\u69cb\u6210\uff08\u30af\u30e9\u30b9\u30bf\uff09\u3092\u7d44\u3080\u3053\u3068\u304c\u3067\u304d\u307e\u3059\u3002
\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8\u306b\u306f\u552f\u4e00\u306e\u30d7\u30e9\u30a4\u30de\u30ea\u30ce\u30fc\u30c9(&b(3){PRIMARY})\u3068\u30bb\u30ab\u30f3\u30c0\u30ea\u30ce\u30fc\u30c9(&b(3){SECONDARY})\u8907\u6570\u3092\u542b\u3081\u308b\u4e8b\u304c\u3067\u304d\u3001\u30af\u30e9\u30b9\u30bf\u306b\u5bfe\u3059\u308b\u66f8\u304d\u8fbc\u307f\u306f\u5168\u3066&b(3){PRIMARY}\u306b\u5bfe\u3057\u3066\u884c\u308f\u308c\u307e\u3059\u3002
&b(3){PRIMARY}\u306b\u5bfe\u3059\u308b\u66f4\u65b0\u306f\u901f\u3084\u304b\u306b\u5168\u3066\u306e&b(3){SECONDARY}\u306b\u30b3\u30d4\u30fc\u3055\u308c\u5b89\u5168\u306b\u4fdd\u6301\u3055\u308c\u307e\u3059\u3002

\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8\u3067\u306f\u4e07\u4e00&b(3){PRIMARY}\u3092\u55aa\u5931\u3057\u305f\u5834\u5408\u3067\u3082\u81ea\u52d5\u7684\u306b\u305d\u308c\u3092\u691c\u77e5\u3057\u4efb\u610f\u306e&b(3){SECONDARY}\u3092&b(3){PRIMARY}\u306b\u6607\u683c\u3055\u305b\u307e\u3059\u3002
\u3053\u306e\u52d5\u4f5c\u306b\u3088\u308a\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8\u306f\u5358\u4e00\u969c\u5bb3\u70b9\uff08&b(3){SPOF}\uff09\u3092\u6301\u305f\u306a\u3044\u6975\u3081\u3066\u9ad8\u3044\u5bfe\u969c\u5bb3\u6027\u3092\u5b9f\u73fe\u3057\u3066\u3044\u307e\u3059\u3002

*** \u30b9\u30b1\u30fc\u30e9\u30d3\u30ea\u30c6\u30a3\uff08Scalability\uff09
MongoDB\u306f&b(3){\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8}\u3068\u30b7\u30e3\u30fc\u30c7\u30a3\u30f3\u30b0\uff08&b(3){Sharding}\uff09\u306e\u8ca0\u8377\u5206\u6563\u306e\u4ed5\u7d44\u307f\u3092\u7528\u610f\u3057\u3066\u304a\u308a\u30b7\u30b9\u30c6\u30e0\u306e\u8ca0\u8377\u306b\u5fdc\u3058\u3066\u67d4\u8edf\u306b\u5bfe\u5fdc\u3059\u308b\u4e8b\u304c\u3067\u304d\u307e\u3059\u3002

**** \u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8
\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8\u306e\u30c7\u30fc\u30bf\u306f\u5168\u3066\u306e&b(3){SECONDARY}\u306b\u30b3\u30d4\u30fc\u3055\u308c\u3066\u3044\u308b\u306e\u3067\u8ca0\u8377\u306b\u5fdc\u3058\u305f\u6570\u306e&b(3){SECONDARY}\u3092\u7528\u610f\u3057&b(3){SECONDARY}\u304b\u3089\u30c7\u30fc\u30bf\u306e\u53d6\u5f97\u3059\u308b\u4e8b\u3067\u8ca0\u8377\u5206\u6563\u304c\u3067\u304d\u307e\u3059\u3002

>&a(http://jp.docs.mongodb.org/manual/core/replication/){\u3082\u3063\u3068\u8a73\u3057\u304f}

**** Sharding
\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u3092\u6c34\u5e73\u5206\u5272\u3059\u308b\u6a5f\u80fd\u3067\u3059\u3002\u5206\u5272\u6570\u3084\u30d0\u30e9\u30f3\u30b7\u30f3\u30b0\u306a\u3069\u306f\u901a\u5e38MongoDB\u304c\u81ea\u52d5\u7684\u306b\u884c\u3044\u307e\u3059\u3002
\u3053\u308c\u306b\u3088\u308a\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8\u3067\u306f\u5bfe\u5fdc\u51fa\u6765\u306a\u3044\u898f\u6a21\u306e\u30ea\u30af\u30a8\u30b9\u30c8\u3084\u30c7\u30fc\u30bf\u91cf\u306b\u5bfe\u5fdc\u3059\u308b\u4e8b\u304c\u51fa\u6765\u307e\u3059\u3002

>&a(http://jp.docs.mongodb.org/manual/sharding/){\u3082\u3063\u3068\u8a73\u3057\u304f}

*** \u30e9\u30a4\u30bb\u30f3\u30b9
MongoDB\u306e\u30e9\u30a4\u30bb\u30f3\u30b9\u306f\u4e00\u90e8\u306bGNU AGPL v3.0\u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059\u3002

GNU AGPL v3.0\u30e9\u30a4\u30bb\u30f3\u30b9\u306f\u5546\u7528\u5229\u7528\u304c\u96e3\u3057\u304fMongoDB\u5c0e\u5165\u306b\u969b\u3057\uff08\u4e3b\u306b\u6cd5\u52d9\u90e8\u3068\uff09\u63c9\u3081\u6613\u3044\u30e9\u30a4\u30bb\u30f3\u30b9\u3067\u3059\u3002
\u3057\u304b\u3057\u5b9f\u969b\u306f\u4ed6\u306e\u30aa\u30fc\u30d7\u30f3\u30bd\u30fc\u30b9DB\u3068\u540c\u69d8\u306b\u307b\u3068\u3093\u3069\u5236\u7d04\u7121\u3057\u3067\u5229\u7528\u3059\u308b\u4e8b\u304c\u3067\u304d\u307e\u3059\u3002

>\u8a73\u3057\u304f\u306f&a(licence){\u3053\u3061\u3089\uff08\u30e9\u30a4\u30bb\u30f3\u30b9\uff09}\u3067\u89e3\u8aac\u3057\u307e\u3059\u3002
",
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
"text":"\u5f53\u30b5\u30a4\u30c8\u306f\u65e5\u672c\u306b\u304a\u3051\u308bMongoDB\u306e\u666e\u53ca\u3068\u767a\u5c55\u3092\u76ee\u7684\u306b\u3001"
}
]
},
{
"tag":"a",
"attr":{
"target":"_self",
"href":"/mongo/mongodbjp"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MongoDB JP"
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
"text":"\u306b\u3088\u3063\u3066\u904b\u55b6\u3055\u308c\u3066\u3044\u307e\u3059\u3002"
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
"text":"MongoDB\u3068\u306f"
},
{
"tag":"a",
"attr":{
"href":"#MongoDB\u3068\u306f",
"name":"MongoDB\u3068\u306f"
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
"text":"MongoDB\u306f"
}
]
},
{
"tag":"a",
"attr":{
"target":"_blank",
"href":"http://www.10gen.com/"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"10gen"
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
"text":"\u306b\u3088\u308a\u958b\u767a/\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u308bC++\u3067\u5b9f\u88c5\u3055\u308c\u305f\u30aa\u30fc\u30d7\u30f3\u30bd\u30fc\u30b9\u306e\u30c7\u30fc\u30bf\u30d9\u30fc\u30b9\u3067\u3059\u3002"
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
"text":"\u3044\u308f\u3086\u308bNoSQL\u306b\u5206\u985e\u3055\u308c\u308b\u30bf\u30a4\u30d7\u306e\u30c7\u30fc\u30bf\u30d9\u30fc\u30b9\u3067\u5bfe\u969c\u5bb3\u6027\u3068\u30b9\u30b1\u30fc\u30e9\u30d3\u30ea\u30c6\u30a3\u306b\u512a\u308c\u3001\u307e\u305fNoSQL\u3067\u306f\u73cd\u3057\u304f\u30a4\u30f3\u30c7\u30c3\u30af\u30b9\u3092\u30b5\u30dd\u30fc\u30c8\u3057\u3066\u304a\u308a\u8868\u7d50\u5408(JOIN)\u306f\u51fa\u6765\u306a\u3044\u306a\u304c\u3089RDBMS\u306e\u69d8\u306a\u4f7f\u3044\u65b9\u304c\u51fa\u6765\u308b\u4e8b\u3082\u5927\u304d\u306a\u7279\u5fb4\u3067\u3059\u3002"
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
"text":"\u4e3b\u306a\u7279\u5fb4"
},
{
"tag":"a",
"attr":{
"href":"#\u4e3b\u306a\u7279\u5fb4",
"name":"\u4e3b\u306a\u7279\u5fb4"
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
"text":"\u8010\u969c\u5bb3\u6027\uff08Durability\uff09"
},
{
"tag":"a",
"attr":{
"href":"#\u8010\u969c\u5bb3\u6027\uff08Durability\uff09",
"name":"\u8010\u969c\u5bb3\u6027\uff08Durability\uff09"
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
"text":"MongoDB\u306f"
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8"
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
"text":"\u3068\u547c\u3070\u308c\u308b\u5197\u9577\u69cb\u6210\uff08\u30af\u30e9\u30b9\u30bf\uff09\u3092\u7d44\u3080\u3053\u3068\u304c\u3067\u304d\u307e\u3059\u3002"
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
"text":"\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8\u306b\u306f\u552f\u4e00\u306e\u30d7\u30e9\u30a4\u30de\u30ea\u30ce\u30fc\u30c9("
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"PRIMARY"
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
"text":")\u3068\u30bb\u30ab\u30f3\u30c0\u30ea\u30ce\u30fc\u30c9("
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"SECONDARY"
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
"text":")\u8907\u6570\u3092\u542b\u3081\u308b\u4e8b\u304c\u3067\u304d\u3001\u30af\u30e9\u30b9\u30bf\u306b\u5bfe\u3059\u308b\u66f8\u304d\u8fbc\u307f\u306f\u5168\u3066"
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"PRIMARY"
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
"text":"\u306b\u5bfe\u3057\u3066\u884c\u308f\u308c\u307e\u3059\u3002"
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
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"PRIMARY"
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
"text":"\u306b\u5bfe\u3059\u308b\u66f4\u65b0\u306f\u901f\u3084\u304b\u306b\u5168\u3066\u306e"
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"SECONDARY"
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
"text":"\u306b\u30b3\u30d4\u30fc\u3055\u308c\u5b89\u5168\u306b\u4fdd\u6301\u3055\u308c\u307e\u3059\u3002"
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
"text":"\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8\u3067\u306f\u4e07\u4e00"
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"PRIMARY"
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
"text":"\u3092\u55aa\u5931\u3057\u305f\u5834\u5408\u3067\u3082\u81ea\u52d5\u7684\u306b\u305d\u308c\u3092\u691c\u77e5\u3057\u4efb\u610f\u306e"
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"SECONDARY"
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
"text":"\u3092"
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"PRIMARY"
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
"text":"\u306b\u6607\u683c\u3055\u305b\u307e\u3059\u3002"
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
"text":"\u3053\u306e\u52d5\u4f5c\u306b\u3088\u308a\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8\u306f\u5358\u4e00\u969c\u5bb3\u70b9\uff08"
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"SPOF"
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
"text":"\uff09\u3092\u6301\u305f\u306a\u3044\u6975\u3081\u3066\u9ad8\u3044\u5bfe\u969c\u5bb3\u6027\u3092\u5b9f\u73fe\u3057\u3066\u3044\u307e\u3059\u3002"
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
"text":"\u30b9\u30b1\u30fc\u30e9\u30d3\u30ea\u30c6\u30a3\uff08Scalability\uff09"
},
{
"tag":"a",
"attr":{
"href":"#\u30b9\u30b1\u30fc\u30e9\u30d3\u30ea\u30c6\u30a3\uff08Scalability\uff09",
"name":"\u30b9\u30b1\u30fc\u30e9\u30d3\u30ea\u30c6\u30a3\uff08Scalability\uff09"
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
"text":"MongoDB\u306f"
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8"
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
"text":"\u3068\u30b7\u30e3\u30fc\u30c7\u30a3\u30f3\u30b0\uff08"
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Sharding"
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
"text":"\uff09\u306e\u8ca0\u8377\u5206\u6563\u306e\u4ed5\u7d44\u307f\u3092\u7528\u610f\u3057\u3066\u304a\u308a\u30b7\u30b9\u30c6\u30e0\u306e\u8ca0\u8377\u306b\u5fdc\u3058\u3066\u67d4\u8edf\u306b\u5bfe\u5fdc\u3059\u308b\u4e8b\u304c\u3067\u304d\u307e\u3059\u3002"
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
"class":"h5"
},
"children":[
{
"tag":"h5",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8"
},
{
"tag":"a",
"attr":{
"href":"#\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8",
"name":"\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8"
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
"class":"hd5"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8\u306e\u30c7\u30fc\u30bf\u306f\u5168\u3066\u306e"
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"SECONDARY"
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
"text":"\u306b\u30b3\u30d4\u30fc\u3055\u308c\u3066\u3044\u308b\u306e\u3067\u8ca0\u8377\u306b\u5fdc\u3058\u305f\u6570\u306e"
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"SECONDARY"
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
"text":"\u3092\u7528\u610f\u3057"
}
]
},
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"SECONDARY"
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
"text":"\u304b\u3089\u30c7\u30fc\u30bf\u306e\u53d6\u5f97\u3059\u308b\u4e8b\u3067\u8ca0\u8377\u5206\u6563\u304c\u3067\u304d\u307e\u3059\u3002"
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
"text":">"
}
]
},
{
"tag":"a",
"attr":{
"target":"_blank",
"href":"http://jp.docs.mongodb.org/manual/core/replication/"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3082\u3063\u3068\u8a73\u3057\u304f"
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
"class":"h5"
},
"children":[
{
"tag":"h5",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Sharding"
},
{
"tag":"a",
"attr":{
"href":"#Sharding",
"name":"Sharding"
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
"class":"hd5"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u3092\u6c34\u5e73\u5206\u5272\u3059\u308b\u6a5f\u80fd\u3067\u3059\u3002\u5206\u5272\u6570\u3084\u30d0\u30e9\u30f3\u30b7\u30f3\u30b0\u306a\u3069\u306f\u901a\u5e38MongoDB\u304c\u81ea\u52d5\u7684\u306b\u884c\u3044\u307e\u3059\u3002"
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
"text":"\u3053\u308c\u306b\u3088\u308a\u30ec\u30d7\u30ea\u30ab\u30bb\u30c3\u30c8\u3067\u306f\u5bfe\u5fdc\u51fa\u6765\u306a\u3044\u898f\u6a21\u306e\u30ea\u30af\u30a8\u30b9\u30c8\u3084\u30c7\u30fc\u30bf\u91cf\u306b\u5bfe\u5fdc\u3059\u308b\u4e8b\u304c\u51fa\u6765\u307e\u3059\u3002"
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
"text":">"
}
]
},
{
"tag":"a",
"attr":{
"target":"_blank",
"href":"http://jp.docs.mongodb.org/manual/sharding/"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3082\u3063\u3068\u8a73\u3057\u304f"
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
"text":"\u30e9\u30a4\u30bb\u30f3\u30b9"
},
{
"tag":"a",
"attr":{
"href":"#\u30e9\u30a4\u30bb\u30f3\u30b9",
"name":"\u30e9\u30a4\u30bb\u30f3\u30b9"
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
"text":"MongoDB\u306e\u30e9\u30a4\u30bb\u30f3\u30b9\u306f\u4e00\u90e8\u306bGNU AGPL v3.0\u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059\u3002"
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
"text":"GNU AGPL v3.0\u30e9\u30a4\u30bb\u30f3\u30b9\u306f\u5546\u7528\u5229\u7528\u304c\u96e3\u3057\u304fMongoDB\u5c0e\u5165\u306b\u969b\u3057\uff08\u4e3b\u306b\u6cd5\u52d9\u90e8\u3068\uff09\u63c9\u3081\u6613\u3044\u30e9\u30a4\u30bb\u30f3\u30b9\u3067\u3059\u3002"
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
"text":"\u3057\u304b\u3057\u5b9f\u969b\u306f\u4ed6\u306e\u30aa\u30fc\u30d7\u30f3\u30bd\u30fc\u30b9DB\u3068\u540c\u69d8\u306b\u307b\u3068\u3093\u3069\u5236\u7d04\u7121\u3057\u3067\u5229\u7528\u3059\u308b\u4e8b\u304c\u3067\u304d\u307e\u3059\u3002"
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
"text":">\u8a73\u3057\u304f\u306f"
}
]
},
{
"tag":"a",
"attr":{
"target":"_self",
"href":"/mongo/licence"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u3053\u3061\u3089\uff08\u30e9\u30a4\u30bb\u30f3\u30b9\uff09"
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
"text":"\u3067\u89e3\u8aac\u3057\u307e\u3059\u3002"
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
"_time":1371775522,
"_timestr":"2013-06-21",
"_u":"main"
}
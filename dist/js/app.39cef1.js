webpackJsonp([0],[,,,function(e,t,n){"use strict";var r=n(1),o=n(30),a=n(12);r.a.use(o.a);var u=new o.a({routes:a.a});t.a=u},function(e,t,n){n(15);var r=n(0)(n(5),n(28),null,null);e.exports=r.exports},function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default={name:"App"}},function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default={name:"home"}},function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default={name:"hello"}},function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default={name:"purchase"}},function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default={name:"page2"}},function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default={name:"world"}},function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var r=n(1),o=n(3),a=n(4),u=n.n(a);new r.a({el:"#app",router:o.a,render:function(e){return e(u.a)}}),console.info("[当前环境] 生产环境"),r.a.config.devtools=!1},function(e,t,n){"use strict";var r=n(13),o=n(14);t.a=[{path:"/home",alias:"/",component:function(e){n.e(0).then(function(){var t=[n(19)];e.apply(null,t)}.bind(this)).catch(n.oe)}},r.a,o.a,{path:"*",component:{beforeCreate:function(){window.swal({type:"warning",title:"404 NOT FOUND",timer:1e3,showConfirmButton:!1}),this.$router.replace("/")},template:"<div></div>"}}]},function(e,t,n){"use strict";t.a={path:"/purchase",component:n(21),children:[{path:"hello",component:function(e){n.e(0).then(function(){var t=[n(20)];e.apply(null,t)}.bind(this)).catch(n.oe)}}]}},function(e,t,n){"use strict";t.a={path:"/page2",component:n(22),children:[{path:"world",component:function(e){n.e(0).then(function(){var t=[n(23)];e.apply(null,t)}.bind(this)).catch(n.oe)}}]}},function(e,t){},,,,function(e,t,n){var r=n(0)(n(6),n(25),null,null);e.exports=r.exports},function(e,t,n){var r=n(0)(n(7),n(27),null,null);e.exports=r.exports},function(e,t,n){var r=n(0)(n(8),n(26),null,null);e.exports=r.exports},function(e,t,n){var r=n(0)(n(9),n(29),null,null);e.exports=r.exports},function(e,t,n){var r=n(0)(n(10),n(24),null,null);e.exports=r.exports},function(e,t){e.exports={render:function(){var e=this,t=e.$createElement;return(e._self._c||t)("div",[e._v("\n  world\n")])},staticRenderFns:[]}},function(e,t){e.exports={render:function(){var e=this,t=e.$createElement;return(e._self._c||t)("div",[e._v("\n  home\n")])},staticRenderFns:[]}},function(e,t){e.exports={render:function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",[e._v("\n  purchase\n  "),n("router-view")],1)},staticRenderFns:[]}},function(e,t){e.exports={render:function(){var e=this,t=e.$createElement;return(e._self._c||t)("div",[e._v("\n  hello\n")])},staticRenderFns:[]}},function(e,t){e.exports={render:function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"main-content"},[n("router-link",{attrs:{to:"/"}},[e._v("/home")]),e._v(" \n  "),n("router-link",{attrs:{to:"/purchase"}},[e._v("/purchase")]),e._v(" \n  "),n("router-link",{attrs:{to:"/purchase/hello"}},[e._v("/purchase/hello")]),e._v(" \n  "),n("router-link",{attrs:{to:"/page2"}},[e._v("/page2")]),e._v(" \n  "),n("router-link",{attrs:{to:"/page2/world"}},[e._v("/page2/world")]),e._v(" \n  "),n("router-link",{attrs:{to:"/whatever"}},[e._v("404")]),n("hr"),e._v(" "),n("router-view")],1)},staticRenderFns:[]}},function(e,t){e.exports={render:function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",[e._v("\n  page2\n  "),n("router-view")],1)},staticRenderFns:[]}}],[11]);
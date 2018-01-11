import Vue from 'vue'
import VueRouter from 'vue-router'
// import routes from './map/' // 路由映射
import Index from '../views/index/index.vue'
import Table from '../views/table/table.vue'
import Form from '../views/form/form.vue'
import ue from '../views/editor/editor.vue'
// import App from '../components/App'
Vue.use(VueRouter)

const router = new VueRouter({
  // mode: 'hash|history|abstract',
  // base: '/',
  // linkActiveClass: 'router-link-active',
  // scrollBehavior: fn

  path: '/',
  component: Table,
  children: [
    {path: 'index', component: Index, name: 'index', class: 'fa-line-chart'},
    {path: 'table', component: Table, name: 'table', class: 'fa-table'},
    {path: 'form', component: Form, name: 'form', class: 'fa-newspaper-o'},
    {path: 'editor', component: ue, name: 'editor', class: 'fa-plug'}
  ]

})

export default router

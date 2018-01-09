<template>
  <div class="main-content">
    <router-link to="/">首页</router-link>&emsp;
    <router-link to="/purchase">采购订单</router-link>&emsp;
    <router-link to="/page1/hello">/page1/hello</router-link>&emsp;
    <router-link to="/page2">模板管理</router-link>&emsp;
    <router-link to="/page2/world">/page2/world</router-link>&emsp;
    <router-link to="/whatever">404</router-link><hr>
    <router-view></router-view>
  </div>
</template>
<script>
export default {
  name: 'App'
}
</script>
<style>
.main-content {
  margin: 30px;
}
</style>

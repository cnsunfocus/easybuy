<template>
  <div>
	<div id="side" style="width:20%;float:left;">
	  
	  <ul>
		<router-link to="/table" tag="li">日消费明细</router-link>
		<router-link to="/form" tag="li">日消费清单</router-link>
		<router-link to="/index" tag="li">月消费明细</router-link>
		<router-link to="/editor" tag="li">年消费明细</router-link>
	  </ul>
	  <el-row class="container" style="height: 100%">
		<el-col :span="24" class="main">
		  <el-row>
			<el-menu default-active="/table" v-bind:router=true>
			  <el-menu-item index="/index" route="/index">首页</el-menu-item>
			  <el-menu-item index="/form" route="/form">form</el-menu-item>
			  <el-menu-item index="/table" route="/table">table</el-menu-item>
			</el-menu>
			<el-menu :default-active="$route.path" class="mar-l el-menu-vertical-demo el-col el-col-3" light router>
			  
			  <li v-for="(item,index) in $router.children">
				<el-menu-item :index="item.path"><i class="fa" :class="item.class"></i>{{item.name}}</el-menu-item>
			  </li>
			</el-menu>
			<section class="contentCon">
			  <el-col :span="21" :offset="3" class="content-wrapper">
			  
			  </el-col>
			</section>
		  </el-row>
		</el-col>
	  </el-row>
	</div>
	<div id="content" style="width:70%;float:right;">
	  <h1>sdfs</h1>
	  <router-view></router-view>
	</div>
  </div>
</template>
<script>
  //  const ERR_OK = '000'
  export default {
    data () {
      return {
        user: {}
      }
    },

    beforeCreate () {
      if (this.$route.path === '/') {
        this.$router.push({path: '/table'})
      }
    }

  }
</script>
<style>
  
  
  /* fa图标右侧需要流出空白 elementUI图标已自带样式 */
  i.fa {
	vertical-align: baseline;
	margin-right: 10px;
  }
  
  body {
	font-family: Helvetica Neue, Helvetica, PingFang SC, Hiragino Sans GB, Microsoft YaHei, SimSun, sans-serif;
	background-color: #F2F2F2;
  }
  
  .menu,
  .el-menu {
	height: 100%;
	background-color: #E6E6E6;
	position: fixed;
	float: left;
  }
  
  .container {
	padding-top: 80px;
	height: 100%;
  }
  
  .container .main {
	padding: 0;
  }
  
  .container ul li.el-menu-item {
	font-size: 100%;
  }
  
  .container .mar-l {
	padding: 0;
  }
  
  .container .content-wrapper {
	padding: 20px;
  }

</style>


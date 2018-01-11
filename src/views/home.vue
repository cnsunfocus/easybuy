<template>
    <div id="main">
        <div id="sideBar">
            <!--<ul>
                <router-link to="/manifests" tag="li">日消费明细</router-link>
                <router-link to="/daily" tag="li">日消费清单</router-link>
                <router-link to="/monthly" tag="li">月消费明细</router-link>
                <router-link to="/yearly" tag="li">年消费明细</router-link>
            </ul>-->
            <el-menu default-active="manifests" theme="dark" v-bind:router="true">
                <el-menu-item index="manifests">日消费明细</el-menu-item>
                <el-menu-item index="daily">日消费清单</el-menu-item>
                <el-menu-item index="monthly">月消费明细</el-menu-item>
                <el-menu-item index="yearly">年消费明细</el-menu-item>
            </el-menu>
        </div>
        <div id="content">
            <transition>
                <keep-alive>
                    <router-view></router-view>
                </keep-alive>
            </transition>
        </div>
    </div>
</template>
<script>
    export default {
        name: 'home'
    }
</script>

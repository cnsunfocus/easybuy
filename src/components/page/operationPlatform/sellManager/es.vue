<template lang="html">
  <div class="sellorders">
    <div class="topbar">
      <span class="shortline"></span>
      <span class="title">ES搜索</span>
    </div>
    <div class="settingbox">
      <div class="settingtop clrfix">

      <div class="orderProgress">

        <el-input v-model="orderNote" placeholder="查询内容" class="searchinp"></el-input>
          <el-button type="primary" icon="search" @click='search()'>查询</el-button>

      </div>

    </div>
    <div id="orderProgress">
      <el-table height='520'
                :data="progressList"
                border
                style="width: 100%">
        <el-table-column
          prop="oper_date"
          label="操作时间"
          width="180">
        </el-table-column>
        <el-table-column
          prop="operator"
          label="操作员"
          width="180">
        </el-table-column>
        <el-table-column
          prop="before_status"
          label="变更前状态">
        </el-table-column>
        <el-table-column
          prop="after_status"
          label="变更后状态">
        </el-table-column>
        <el-table-column
          prop="reason"
          label="变更原因">
        </el-table-column>
      </el-table>
                </div>
    </div>
  </div>
</template>

<script>
// import qs from 'querystring'
import AMap from 'AMap'

export default {
  data () {
    return {
      query: '',
      searchResult: [],
      nlpResult: [],
      analyzeResult: []
    }
  },
  methods: {
    getSupplierList () {
      var materialUrl = encodeURI(this.HOST + '/suppliers')
      this.$http(materialUrl).then(res => {
        this.supplierOptions = res.data
      })
    },
    addOrder () {
      var materialUrl = encodeURI(this.HOST + '/order')
      console.log('before post', this.materialformdataList)
      this.$http.post(materialUrl, {
        data: this.materialformdataList,
        'supplier': this.supplier,
        'order_id': this.order_id,
        'order_date': this.order_date,
        'addr': '',
        'contact': '',
        'phone': '',
        'fax': '',
        'email': ''
      }).then(res => {
        var result = res.data
        console.log('try to add a order', res.data)
        if (result === 0) {
          console.log('创建订单成功')
          this.$router.push({
            path: './sellorder'
          })
        }
      })
    },
    back () {
      this.$router.push({
        path: './sellorder'
      })
    },
    nameChange (item) {
      var materialUrl = encodeURI(this.HOST + '/material/' + item.name + '/supplier/' + this.supplier.sp_id + '/standard')
      this.$http(materialUrl).then(res => {
        this.materialTypeOptions = res.data
      })
    },
    typeChange (item) {
      var materialUrl = encodeURI(this.HOST + '/material/' + this.materialformdata.name +
        '/standard/' + item +
        '/supplier/' + this.supplier.sp_id)
      this.materialTypeOptions
      this.$http(materialUrl).then(res => {
        console.log(res.data)
        this.materialUnitOptions = res.data['unit']
        console.log(this.materialNameOptions)
      })
    },
    formatDate (value) {
      const format = require('date-fns/format')
      console.log(format(value, 'YYYY-MM-DD'))
    },
    addMaterial () {
      this.getMaterialList()
      this.materialDialogStatus = true
      // 图片的还未进行处理
      // 渲染组件滞后 需要延时才能出来
      setTimeout(function () {
        var map = new AMap.Map('container', {
          resizeEnable: true,
          zoom: 10,
          center: [116.39, 39.9]
        })
        console.log(map)
      }, 100)
    },
  },
  mounted () {
    console.log('jiazai')
  }
}
</script>

<style lang="scss" scoped>
@import "../../../../assets/css/common.scss";
.sellorders{
  padding: 0 25px;
  height: 100%;
  .settingtop{
    padding: 15px 0;
    .choosestatus{
      width: 148px;
      margin-right: 7px;
      float: left;
    }
    .ordersearchbox{
      float: left;
      width: 300px;
      .searchinp{
        width: 178px;
      }
    }
  }
  // 表格样式
  .bluebtn{
    color:#20a0ff;
  }
  // 分页
  .paginationbox{
    margin-top: 20px;
    float: right;
  }
}
</style>

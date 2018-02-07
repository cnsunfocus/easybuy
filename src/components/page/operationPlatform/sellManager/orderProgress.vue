<template lang="html">
  <div class="sellorders">
    <div class="topbar">
      <span class="shortline"></span>
      <span class="title">订单进度</span>
    </div>
    <div class="settingbox">
      <div class="settingtop clrfix">

      <div class="orderProgress">
        <el-select v-model="new_status" value-key="value" placeholder="订单进度状态" @click.native="nameChange(item)">
          <el-option
            v-for="item in orderStatus"
            :key="item.value"
            :label="item.name"
            :value="item">
          </el-option>
        </el-select>
        <el-input v-model="op_note" placeholder="备注信息" style="width: 20%"></el-input>
        <el-button type="primary" icon="search" @click='addProgress()'>更新进度</el-button>
        <el-button type="primary" class="addsort" icon="search" @click='back()'>返回</el-button>
      </div>


    </div>
    <div id="orderProgress">
      <el-table height='520'
                :data="progressList"
                border
                style="width: 100%">
        <el-table-column
          prop="op_date"
          label="操作时间"
          width="180">
        </el-table-column>
        <el-table-column
          prop="operator"
          label="操作员"
          width="180">
        </el-table-column>
        <el-table-column
          prop="status"
          label="变更前状态">
        </el-table-column>
        <el-table-column
          prop="new_status"
          label="变更后状态">
        </el-table-column>
        <el-table-column
          prop="note"
          label="变更原因">
        </el-table-column>
      </el-table>
                </div>
    </div>
  </div>
</template>

<script>
// import qs from 'querystring'
export default {
  watch: {
    $route (to, from) {
      console.log('路由变化', to, from)
    }
  },
  beforeRouteUpdate (to, from, next) {
    console.log('路由变化', to)
    console.log('路由变化', from)
    next()
  },
  data () {
    return {
      curCount: 10,
      curPage: 1,
      orderStatus: [{
        name: '待审核',
        value: 0
      }, {
        name: '待付款',
        value: 1
      }, {
        name: '待发货',
        value: 2
      }, {
        name: '已发货',
        value: 3
      }, {
        name: '已入库',
        value: 4
      }, {
        name: '交易关闭',
        value: 5
      }, {
        name: '退货中',
        value: 6
      }, {
        name: '退款中',
        value: 7
      }, {
        name: '退款成功',
        value: 8
      }, {
        name: '部分入库',
        value: 9
      }, {
        name: '作废',
        value: -1
      }],
      op_note: '',
      orderId: '',
      op_date: '',
      operator: '',
      new_status: '',
      status: '',
      // 表格数据
      progressList: []
    }
  },
  methods: {
    addProgress () {
      var materialUrl = encodeURI(this.HOST + '/order/progress')
      console.log('before post')
      const format = require('date-fns/format')
      this.$http.post(materialUrl, {
        'order_id': this.order_id,
        'op_date': format(new Date(), 'YYYY-MM-DD HH:mm:ss'),
        'operator': '',
        'status': this.status,
        'new_status': this.new_status.value,
        'note': this.op_note
      }).then(res => {
        var result = res.data
        console.log('try to add a order progress', res.data)
        if (result === 0) {
          console.log('更新状态成功')
          this.$router.push({
            path: './sellorder'
          })
        }
      })
    },
    back () {
      this.$router.push({
        path: '../sellorder'
      })
    },
    nameChange (item) {
      this.new_status = item
    },
    formatDate (value) {
      const format = require('date-fns/format')
      console.log(format(value, 'YYYY-MM-DD HH:mm:ss'))
    },
    handleSizeChange (val) {
      this.curCount = val
      this.getOrderList()
      console.log(`每页 ${val} 条`)
    },
    handleCurrentChange (val) {
      this.curPage = val
      console.log(`当前页: ${val}`)
    },
    getProgressList () {
      console.log('查询进度列表')
      this.order_id = this.$route.params.id
      var materialUrl = this.HOST + '/order/' + this.order_id + '/progress/list'
      this.$http(materialUrl).then(res => {
        this.progressList = res.data['progress']
        this.status = res.data['status']
        console.log(this.progressList)
      })
    }
  },
  mounted () {
    this.getProgressList()
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

<template lang="html">
  <div class="sellorders">
    <div class="topbar">
      <span class="shortline"></span>
      <span class="title">订单进度</span>
    </div>
    <div class="settingbox">
      <div class="settingtop clrfix">

      <div class="orderProgress">
        <el-select v-model="orderStatus" value-key="value" placeholder="订单进度状态">
          <el-option
            v-for="item in orderOptions"
            :key="item.value"
            :label="item.name"
            :value="item">
          </el-option>
        </el-select>
        <el-input v-model="orderNote" placeholder="备注信息" class="searchinp"></el-input>
          <el-button type="primary" icon="search" @click='addOrder()'>更新进度</el-button>

      </div>

      <div class="ordersearchbox">
        <el-button type="primary" class="addsort" icon="search" @click='back()'>返回</el-button>
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
      curCount: 10,
      curPage: 1,
      orderOptions: [{
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
      orderStatus: {},
      orderNote: '',
      orderId: '',
      // 表格数据
      supplierOptions: [],
      materialNameOptions: [],
      materialTypeOptions: [],
      materialSpOptions: [],
      materialUnitOptions: []
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
    checkNo (value) {
      console.log('校验')
//      let reg = /^[1-9]\d*$/
//      if (value) {
//        if (value > 999999 || new RegExp(reg).test(value) === false) {
//          setTimeout(() => {
//            this.searchForm.msel.mselTotalConsumTimes = ''
//          }, 500)
//        }
//      }
      value = value.replace(/[^\d.]/g, '')
      value = value.replace(/^\./g, '')
      value = value.replace(/\.{2,}/g, '.')
      value = value.replace('.', '$#$').replace(/\./g, '').replace('$#$', '.')
      value = value.replace(/^(\\-)*(\d+)\.(\d\d).*$/, '$1$2.$3')
      this.materialformdata.price = value
    },
//    myNumberic (obj) {
//    function onlyNumber1(input, n) {
//  var ret = "";
//  var number =input.value;
//  if (number != ""&& number!=null&&number!="0") {
//    var unit = "仟佰拾亿仟佰拾万仟佰拾元角分",
//      str = "";
//    number += "00";
//    var point = number.indexOf('.');
//    if (point >= 0) {
//      number = number.substring(0, point) + number.substr(point + 1, 2);
//    }
//    unit = unit.substr(unit.length - number.length);
//    for (var i = 0; i < number.length; i++) {
//      str += '零壹贰叁肆伍陆柒捌玖'.charAt(number.charAt(i)) + unit.charAt(i);
//    }
//    ret = str.replace(/零(仟|佰|拾|角)/g, "零").replace(/(零)+/g, "零").replace(/零(万|亿|元)/g, "$1").replace(/(亿)万|(拾)/g, "$1$2").replace(/^元零?|零分/g, "").replace(/元$/g, "元") + "整";
//  }
//  var a = document.getElementsByName("MoneyCapital")[0].id;
//  document.getElementById(a).value=ret;
//  }
//    },
    handleSizeChange (val) {
      this.curCount = val
      this.getOrderList()
      console.log(`每页 ${val} 条`)
    },
    handleCurrentChange (val) {
      this.curPage = val
      this.getOrderList()
      console.log(`当前页: ${val}`)
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
    getMaterialList () {
      console.log('查询物料列表')
      var materialUrl = this.HOST + '/material/supplier/' + this.supplier.sp_id
      this.$http(materialUrl).then(res => {
        this.materialNameOptions = res.data
        console.log(this.materialNameOptions)
      })
    },
    deleteItem (index, row) {
      this.materialformdataList.remove(index)
      console.log(index, row, '删除')
    },
    getOrderList () {
      console.log('交易状态', this.chooseOrderItem)
//      var orderListUrl = this.HOST + '/order/list'
//      this.$http(orderListUrl, qs.stringify({
//        status: this.chooseOrderItem,
//        tradeId: this.ordernum,
//        count: this.curCount,
//        page: this.curPage
//      })).then(res => {
//        console.log(res.data.list)
//        this.materialNameOptions = res.data.list
//        for (var i = 0; i < this.materialNameOptions.length; i++) {
//          if (this.materialNameOptions[i].status < 2) {
//            this.materialNameOptions[i].transport = '待发货'
//          } else if (this.materialNameOptions[i].status >= 2 && this.materialNameOptions[i].status < 5) {
//            this.materialNameOptions[i].transport = '已发货'
//          } else if (this.materialNameOptions[i].status === 5) {
//            this.materialNameOptions[i].transport = '交易关闭'
//          } else if (this.materialNameOptions[i].status === 6) {
//            this.materialNameOptions[i].transport = '退货中'
//          } else if (this.materialNameOptions[i].status === 7) {
//            this.materialNameOptions[i].transport = '退货中'
//          } else if (this.materialNameOptions[i].status === 8) {
//            this.materialNameOptions[i].transport = '退款成功'
//          }
//          switch (this.materialNameOptions[i].status) {
//            case 0:
//              this.materialNameOptions[i].status = '待付款'
//              break
//            case 1:
//              this.materialNameOptions[i].status = '待发货'
//              break
//            case 2:
//              this.materialNameOptions[i].status = '待收货'
//              break
//            case 3:
//              this.materialNameOptions[i].status = '待评价'
//              break
//            case 4:
//              this.materialNameOptions[i].status = '已完成'
//              break
//            case 5:
//              this.materialNameOptions[i].status = '交易关闭'
//              break
//            case 6:
//              this.materialNameOptions[i].status = '退货中'
//              break
//            case 7:
//              this.materialNameOptions[i].status = '退款中'
//              break
//            case 8:
//              this.materialNameOptions[i].status = '退款成功'
//              break
//          }
//        }
//      })
    }
  },
  mounted () {
    const form = require('date-fns/format')
    this.order_date = form(new Date(), 'YYYY-MM-DD')
    this.order_id = form(new Date(), 'YYYYMMDDHHmmss')
    this.getSupplierList()
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

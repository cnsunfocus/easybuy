<template lang="html">
  <div class="sellorders">
    <div class="topbar">
      <span class="shortline"></span>
      <span class="title">采购订单</span>
    </div>
    <div class="settingbox">
      <div class="settingtop clrfix">

      <div class="ordersearchbox">
          <el-button type="primary" icon="search" @click='addOrder()'>下单</el-button>
      </div>
        <div class="choosestatus">
          <!-- 订单状态选择框 -->
          <el-select v-model="chooseOrderItem" placeholder="订单状态">
            <el-option
            v-for="item in orderOptions"
            :key="item.value"
            :label="item.name"
            :value="item.value">
          </el-option>
        </el-select>
      </div>
      <div class="ordersearchbox">
        <el-input v-model="ordernum" placeholder="搜订单编号" class="searchinp"></el-input>
        <el-button type="primary" icon="search" @click='getOrderList()'>搜索</el-button>
      </div>
    </div>
    <!-- 订单表格部分 -->
    <div class="ordedatabox">
      <el-table height='520'
         :data="orderList"
         border
         style="width: 100%">
         <el-table-column
           prop="order_id"
           label="订单号"
           width="180">
         </el-table-column>
         <el-table-column
           prop="order_date"
           label="下单时间"
           width="180">
         </el-table-column>
        <el-table-column
           prop="supplier"
           label="供货商">
         </el-table-column>
         <el-table-column
           prop="sp_contact"
           label="联系人">
         </el-table-column>
         <el-table-column
           prop="sp_phone"
           label="联系电话">
         </el-table-column>
         <el-table-column
           prop="contact"
           label="下单员">
         </el-table-column>
         <el-table-column
           prop="status"
           label="交易状态">
         </el-table-column>
         <el-table-column
           prop="transport"
           label="物流信息">
         </el-table-column>
          <el-table-column
            prop="totalPrice"
            label="总金额">
          </el-table-column>
          <!--
         <el-table-column
           prop="actualPrice"
           label="应付款">
         </el-table-column>
         -->
         <el-table-column
           prop="operation"
           label="操作">
           <template slot-scope="scope">
             <span class="bluebtn"  @click="addProgress(scope.row.order_id)">进度</span>
             <span class="bluebtn" @click="showDetail(scope.row)">审核</span>
           </template>
         </el-table-column>
       </el-table>
    </div>
    <!-- 分页 -->
        <div class="paginationbox">
        <el-pagination
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange"
          :current-page="curPage"
          :page-sizes="[10, 20, 50]"
          :page-size="curCount"
          layout="total, sizes, prev, pager, next, jumper"
          :total="totlRecords">
        </el-pagination>
      </div>
    </div>
  <el-dialog
    title="采购审核"
    :visible.sync="confirmDlg"
    size="tiny">
    <div id="confirmOrder">
      <h1 align = "center">采购单</h1>
      <br></br>
      <div>
        <table width="100%" border="1" cellpadding="0" cellspacing="0" style= "border:1px solid #000000;border-right-color:#FF0000;">
          <tr style = "boder:1px">
            <td>订单号:</td>
            <td>{{confirmInfo.order_id}}</td>
            <td>订单日期:</td>
            <td>{{confirmInfo.order_date}}</td>
          </tr>
          <tr style = "boder:1px">
            <td>计划单:</td>
            <td>{{}}</td>
            <td>订购方:</td>
            <td>南京柔科</td>
          </tr>
          <tr style = "boder:1px">
            <td>供应商:</td>
            <td>{{confirmInfo.supplier.name}}</td>
            <td>地址:</td>
            <td>{{confirmInfo.buyer.addr}}</td>
          </tr>
          <tr style = "boder:1px">
            <td>联系人:</td>
            <td>{{confirmInfo.supplier.contact}}</td>
            <td>联系人:</td>
            <td>史辉</td>
          </tr>
          <tr style = "boder:1px">
            <td>电话:</td>
            <td>{{confirmInfo.supplier.phone}}</td>
            <td>电话:</td>
            <td>{{confirmInfo.buyer.phone}}</td>
          </tr>
          <tr style = "boder:1px">
            <td>传真:</td>
            <td>{{confirmInfo.supplier.fax}}</td>
            <td>传真:</td>
            <td>{{confirmInfo.buyer.fax}}</td>
          </tr>
          <tr style = "boder:1px">
            <td  colspan="4">订购内容:</td>
          </tr>
          <tr style = "boder:1px">
            <td colspan="4">
              <table id="confirmDetail" width="100%" border="1" cellpadding="0" cellspacing="0"
                     style= "border:1px solid #000000;border-right-color:#FF0000;">
                <tr>
                  <th>序号</th>
                  <th>物料名称</th>
                  <th>型号</th>
                  <th>单位</th>
                  <th>数量</th>
                  <th>单价</th>
                  <th>交货期</th>
                  <th>备注</th>
                </tr>
                <tr v-for="(item, index) in orderDetail">
                  <td>{{index + 1}}</td>
                  <td>{{item.name}}</td>
                  <td>{{item.standard}}</td>
                  <td >{{item.unit}}</td>
                  <td>{{item.amount}}</td>
                  <td v-if="!editFlag">{{item.price}}</td>
                  <td v-if="editFlag"><input :value="item.price" style="width:20px"></input></td>
                  <td>{{item.date}}</td>
                  <td>{{item.note}}</td>
                </tr>
              </table>
            </td>
          </tr>
          <tr style = "boder:1px">
            <td align="left" colspan="4">
              <p>交易条款:</p>
              <p>一. 交期</p>
              <p>二. 品质</p>
              <p>三. 不良处理</p>
            </td>
          </tr>
        </table>
        <div id="orderFooter">
          <input type="text">采购: </input>
          <input type="text">审核: </input>
          <label>供应商(签章):</label>
        </div>

      </div>

    </div>
    <div id="orderOperation">
      <el-button type="primary" id="editBtn" is-disabled="" icon="search" @click='editPrice()'>修改</el-button>
      <el-button type="primary" id="saveBtn" is-disabled="" icon="search" @click='savePrice()'>保存</el-button>
      <el-button type="primary" icon="search" @click='printOrder()'>打印</el-button>

    </div>

  </el-dialog>

  </div>

</template>

<script>
import AMap from 'AMap'
import ElDialog from '../../../../../node_modules/element-ui/packages/dialog/src/component'
export default {
  components: {ElDialog},
  data () {
    return {
      editFlag: false,
      purchaseOrderDialog: false,
      confirmDlg: false,
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
      chooseOrderItem: '',
      chooseGoodItem: '',
      // 搜订单编号
      ordernum: '',
      curCount: 10,
      curPage: 1,
      totalRecords: 0,
      // 表格数据
      orderList: [],
      orderDetail: [],
      confirmInfo: {
        order_id: '',
        order_date: '',
        supplier: {},
        buyer: {}
      }
    }
  },
  methods: {
    addOrder () {
      this.$router.push({
        path: '/addOrder'
      })
    },
    addProgress (orderId) {
      this.$router.push({
        path: '/progress/' + orderId,
        params: {id: orderId}
      })
    },
    showDetail (order) {
      var orderDetailUrl = this.HOST + '/order/detail/' + order.order_id
      this.$http(orderDetailUrl).then(res => {
        this.orderDetail = res.data['order_detail']
        this.confirmInfo.order_id = res.data['order_id']
        this.confirmInfo.order_date = res.data['order_date']
        this.confirmInfo.supplier = res.data['supplier']
        this.confirmInfo.buyer = res.data['buyer']
        this.confirmDlg = true
        console.log('采购明细1', res.data)
      })
    },
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
    // 添加机构
    addPurchaseOrder () {
      this.purchaseOrderDialog = true
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
    savePrice () {
      var btn = document.getElementById('saveBtn')
      console.log('更新价格1', btn)
      btn.setAttribute('is-disabled', 'true')
      var orderListUrl = this.HOST + '/order'
      this.$http.put(orderListUrl, {
        data: this.orderDetail
      }).then(res => {
        console.log('更新价格2', res.data)
      })
      this.editFlag = false
      btn.setAttribute('is-disabled', '')
    },
    editPrice () {
      var btn = document.getElementById('saveBtn')
      console.log('test', btn)
      btn.setAttribute('is-disabled', 'true')
      this.editFlag = true
      console.log('修改价格', this.formdata)
    },
    printOrder () {
      let subOutputRankPrint = document.getElementById('confirmOrder')
      console.log(subOutputRankPrint.innerHTML)
      let newContent = subOutputRankPrint.innerHTML
      let oldContent = document.body.innerHTML
      document.body.innerHTML = newContent
      window.print()
      window.location.reload()
      document.body.innerHTML = oldContent
    },
    getOrderList () {
      console.log('交易状态', this.chooseOrderItem)
      var orderListUrl = this.HOST + '/order/list'
      this.$http.post(orderListUrl, {
        status: this.chooseOrderItem,
        count: this.curCount,
        page: this.curPage
      }).then(res => {
        console.log('获取订单列表', res.data)
        this.orderList = res.data['data']
        this.totalRecords = res.data['count']
      })
    }
  },
  mounted () {
    this.getOrderList()
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

<template lang="html">
  <div class="sellorders">
    <div class="topbar">
      <span class="shortline"></span>
      <span class="title">创建订单</span>
    </div>
    <div class="settingbox">
      <div class="settingtop clrfix">

      <div class="ordersearchbox">
          <el-button type="primary" icon="search" @click='addMaterial()'>添加原料</el-button>
          <el-button type="primary" icon="search" @click='addOrder()'>确认下单</el-button>
      </div>
        <div class="choosestatus">
          <!-- 订单状态选择框 -->
          <el-select v-model="supplier"  placeholder="供应商列表">
            <el-option
            @click.native="clearOrder(item)"
            v-for="item in supplierOptions"
            :key="item.sp_id"
            :label="item.sp_name"
            :value="item">
          </el-option>
        </el-select>
      </div>
      <div class="ordersearchbox">
        <el-button type="primary" class="addsort" icon="search" @click='back()'>返回</el-button>
      </div>
    </div>
    <div id="purchaseOrder">
                <h1 align = "center">采购单</h1>
                <br></br>
                <div>
                  <table width="100%" border="1" cellpadding="0" cellspacing="0" style= "border:1px solid #000000;border-right-color:#FF0000;">
                     <tr style = "boder:1px">
                       <td>订单号:</td>
                       <td>{{printDialogTitle}}</td>
                       <td>订单日期:</td>
                       <td>{{printDialogTitle}}</td>
                     </tr>
                    <tr style = "boder:1px">
                      <td>计划单:</td>
                      <td>{{printDialogTitle}}</td>
                      <td>订购方:</td>
                      <td>南京柔科</td>
                    </tr>
                    <tr style = "boder:1px">
                      <td>供应商:</td>
                      <td>{{supplier.sp_name}}</td>
                      <td>地址:</td>
                      <td>南京柔科</td>
                    </tr>
                    <tr style = "boder:1px">
                      <td>联系人:</td>
                      <td>{{supplier.sp_contact}}</td>
                      <td>联系人:</td>
                      <td>史辉</td>
                    </tr>
                    <tr style = "boder:1px">
                      <td>电话:</td>
                      <td>{{supplier.sp_phone}}</td>
                      <td>电话:</td>
                      <td>南京柔科</td>
                    </tr>
                    <tr style = "boder:1px">
                      <td>传真:</td>
                      <td>{{printDialogTitle}}</td>
                      <td>传真:</td>
                      <td>南京柔科</td>
                    </tr>
                    <tr style = "boder:1px">
                      <td  colspan="4">订购内容:</td>
                    </tr>
                    <tr style = "boder:1px">
                      <td colspan="4">
                        <table id="orderDetail" width="100%" border="1" cellpadding="0" cellspacing="0"
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
                          <tr v-for="(item, index) in materialformdataList">
                            <td>{{index + 1}}</td>
                            <td>{{item.name}}</td>
                            <td>{{item.type}}</td>
                            <td>{{item.unit.desc}}</td>
                            <td>{{item.amount}}</td>
                            <td>{{item.price}}</td>
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

    </div>

            <!-- 添加规格组弹框 -->
            <el-dialog
              :title="dialogTitle"
              :visible.sync="materialDialogStatus"
              size="tiny">
              <el-form ref="standardform" :model="materialformdata" label-width="100px">
                <el-form-item label="名称">
                  <el-select v-model="materialformdata.name" placeholder="请选择物料">
                    <el-option
                      v-for="item in materialNameOptions"
                      @click.native="nameChange(item)"
                      :key="item.name"
                      :label="item.name"
                      :value="item.name">
                    </el-option>
                  </el-select>
                </el-form-item>

                <el-form-item label="型号">
                  <el-select v-model="materialformdata.type" placeholder="请选择物料型号">
                    <el-option
                      v-for="item in materialTypeOptions"
                      @click.native="typeChange(item)"
                      :key="item"
                      :label="item"
                      :value="item">
                    </el-option>
                  </el-select>
                </el-form-item>

                <el-form-item label="单位">
                  <el-select v-model="materialformdata.unit" placeholder="请选择单位">
                    <el-option
                      v-for="item in materialUnitOptions"
                      :key="item.code"
                      :label="item.desc"
                      :value="item">
                    </el-option>
                  </el-select>
                </el-form-item>

                <el-form-item label="数量">
                  <el-input type="number" step="100" v-model="materialformdata.amount" placeholder="请填写物料数量" ></el-input>
                </el-form-item>

                <el-form-item label="单价">
                  <el-input type="number" step="0.01"
                            v-model="materialformdata.price"
                            @change="checkNo(materialformdata.price)"
                            onkeypress="return event.keyCode>=48&&event.keyCode<=57"
                            placeholder="请填写单价"></el-input>
                </el-form-item>
                <el-form-item label="交货期">
                  <el-date-picker
                    v-model="materialformdata.date"
                    type="date"
                    format="yyyy-MM-dd"
                    placeholder="请选择交货日期"
                    @change="formatDate">
                  </el-date-picker>
                </el-form-item>
                <el-form-item label="备注">
                  <el-input v-model="materialformdata.note" placeholder="请填写备注信息" ></el-input>
                </el-form-item>
              </el-form>
              <span slot="footer" class="dialog-footer">
                      <el-button type="primary" @click="addMaterialConfirm">确 定</el-button>
                      <el-button @click="materialDialogStatus = false">取 消</el-button>
              </span>
            </el-dialog>

            <el-dialog
              :title="printDialogTitle"
              :visible.sync="printDialogStatus"
              size="tiny">

              <el-form ref="standardform" :model="materialformdata" label-width="100px">
                <el-form-item></el-form-item>
              </el-form>
            </el-dialog>
  </div>
</template>

<script>
// import qs from 'querystring'
import AMap from 'AMap'
export default {
  data () {
    return {
      dialogTitle: '',
      materialDialogStatus: false,
      printDialogTitle: '确认采购订单',
      printDialogStatus: false,
      supplier: {},
      materialformdataList: [],
      materialformdata: {
        code: '',
        id: '',
        name: '',
        type: '',
        unit: '',
        amount: 1,
        price: '',
        date: '',
        note: ''
      },
      orderOptions: [{
        name: '待付款',
        value: 0
      }, {
        name: '待发货',
        value: 1
      }, {
        name: '待收货',
        value: 2
      }, {
        name: '待评价',
        value: 3
      }, {
        name: '已完成',
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
      }],
      chooseOrderItem: '',
      chooseGoodItem: '',
      // 搜订单编号
      ordernum: '',
      curCount: 10,
      curPage: 1,
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
        data: this.materialformdataList
      }).then(res => {
        var result = res.data
        console.log('结果', result)
      })
      console.log('try to add a order')
    },
    addMaterialConfirm () {
      const format = require('date-fns/format')
      var dt = this.materialformdata.date
      this.materialformdata.date = format(dt, 'YYYY-MM-DD')
      this.materialformdataList.push(this.materialformdata)
      this.materialDialogStatus = false
      this.materialformdata = { 'amount': 1 }
      console.log('try to add a material')
    },
    back () {
      this.$router.push({
        path: './sellorder'
      })
    },
    clearOrder (item) {
      alert('切换供应商将清空当前采购单')
      this.materialformdataList = []
      this.supplier = item
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
//      var orderListUrl = this.HOST + '/purchase_order/list'
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

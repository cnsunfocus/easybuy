<template lang="html">
  <div class="sellorders">
    <div class="topbar">
      <span class="shortline"></span>
      <span class="title">创建订单</span>
    </div>
    <div class="settingbox">
      <div class="settingtop clrfix">
        <div class="choosestatus">
          <!-- 订单状态选择框 -->
          <el-select v-model="supplier" value-key="sp_id" placeholder="供应商列表" style="width:280px">
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
          <el-button type="primary" icon="search" @click='addMaterial()'>添加原料</el-button>
          <el-button type="primary" icon="search" @click='addOrder()'>确认下单</el-button>
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
                       <td>{{order_id}}</td>
                       <td>订单日期:</td>
                       <td>{{order_date}}</td>
                     </tr>
                    <tr style = "boder:1px">
                      <td>计划单:</td>
                      <td></td>
                      <td>订购方:</td>
                      <td>{{baseInfo.comp_name.value}}</td>
                    </tr>
                    <tr style = "boder:1px">
                      <td>供应商:</td>
                      <td>{{supplier.sp_name}}</td>
                      <td>地址:</td>
                      <td>{{baseInfo.comp_addr.value}}</td>
                    </tr>
                    <tr style = "boder:1px">
                      <td>联系人:</td>
                      <td>{{supplier.sp_contact}}</td>
                      <td>联系人:</td>
                      <td>{{baseInfo.comp_purchase.value}}</td>
                    </tr>
                    <tr style = "boder:1px">
                      <td>电话:</td>
                      <td>{{supplier.sp_phone}}</td>
                      <td>电话:</td>
                      <td>{{baseInfo.comp_purchase_phone.value}}</td>
                    </tr>
                    <tr style = "boder:1px">
                      <td>传真:</td>
                      <td>{{supplier.fax}}</td>
                      <td>传真:</td>
                      <td>{{fax}}</td>
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
                          <tr v-for="(item, index) in formdataList">
                            <td>
                            <el-button type="primary" icon="search" @click.native='deleteMaterial(index)'>删除</el-button>
                            {{index + 1}}</td>
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
              <el-form ref="standardform" :model="formdata" label-width="100px">
                <el-form-item label="名称">
                  <el-select v-model="formdata.name" placeholder="请选择物料">
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
                  <el-select v-model="formdata.type" placeholder="请选择物料型号">
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
                  <el-select v-model="formdata.unit" placeholder="请选择单位">
                    <el-option
                      @click.native="unitChange(item)"
                      v-for="item in materialUnitOptions"
                      :key="item.code"
                      :label="item.desc"
                      :value="item">
                    </el-option>
                  </el-select>
                </el-form-item>

                <el-form-item label="数量">
                  <el-input type="number" step="100" v-model="formdata.amount" placeholder="请填写物料数量" ></el-input>
                </el-form-item>

                <el-form-item label="交货期">
                  <el-date-picker
                    v-model="formdata.date"
                    type="date"
                    format="yyyy-MM-dd"
                    placeholder="请选择交货日期"
                    @change="formatDate">
                  </el-date-picker>
                </el-form-item>
                <el-form-item label="备注">
                  <el-input v-model="formdata.note" placeholder="请填写备注信息" ></el-input>
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

              <el-form ref="standardform" :model="formdata" label-width="100px">
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
      order_id: '',
      order_date: '',
      materialDialogStatus: false,
      printDialogTitle: '确认采购订单',
      printDialogStatus: false,
      supplier: {},
      formdataList: [],
      formdata: {
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
      materialUnitOptions: [],
      baseInfo: {}
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
      console.log('before post', this.formdataList)
      this.$http.post(materialUrl, {
        data: this.formdataList,
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
    addMaterialConfirm () {
      var dt = this.formdata.date
      const format = require('date-fns/format')
      this.formdata.date = format(dt, 'YYYY-MM-DD')
      this.formdataList.push(this.formdata)
      this.materialDialogStatus = false
      this.formdata = { 'amount': 1 }
      console.log('try to add a material')
    },
    back () {
      this.$router.push({
        path: './sellorder'
      })
    },
    clearOrder (item) {
      alert('切换供应商将清空当前采购单')
      this.formdataList = []
      this.supplier = item
    },
    nameChange (item) {
      var materialUrl = encodeURI(this.HOST + '/material/' + item.name + '/supplier/' + this.supplier.sp_id + '/standard')
      this.$http(materialUrl).then(res => {
        this.materialTypeOptions = res.data
      })
    },
    typeChange (item) {
      var materialUrl = encodeURI(this.HOST + '/material/' + this.formdata.name +
        '/standard/' + item +
        '/supplier/' + this.supplier.sp_id)
      this.$http(materialUrl).then(res => {
        console.log(res.data)
        this.materialUnitOptions = res.data['unit']
        console.log(this.materialNameOptions)
      })
    },
    unitChange (item) {
      var materialUrl = encodeURI(this.HOST + '/material/' + this.formdata.name +
        '/standard/' + this.formdata.type + '/supplier/' + this.supplier.sp_id +
        '/unit/' + this.formdata.unit.code)
      this.$http(materialUrl).then(res => {
        console.log(res.data)
        this.formdata.price = res.data['price']
      })
    },
    deleteMaterial (index) {
      this.formdataList.splice(index, 1)
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
      this.formdata.price = value
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
      this.formdataList.remove(index)
      console.log(index, row, '删除')
    },
    getOrderList () {
      console.log('交易状态', this.chooseOrderItem)
    },
    getBaseInfo () {
      console.log('获取基本信息')
      var materialUrl = this.HOST + '/baseinfo'
      this.$http(materialUrl).then(res => {
        this.baseInfo = res.data
        console.log(this.baseInfo)
      })
    }
  },
  mounted () {
    const form = require('date-fns/format')
    this.order_date = form(new Date(), 'YYYY-MM-DD')
    this.order_id = form(new Date(), 'YYYYMMDDHHmmss')
    this.getSupplierList()
    this.getBaseInfo()
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
      width: 300px;
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

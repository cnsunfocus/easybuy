<template lang="html">
  <div class="sellorders">
    <div class="topbar">
      <span class="shortline"></span>
      <span class="title">采购订单</span>
    </div>
    <div class="settingbox">
      <div class="settingtop clrfix">

      <div class="ordersearchbox">
          <el-button type="primary" icon="search" @click='addMaterial()'>添加原料</el-button>
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
        <el-button type="primary" class="addsort" icon="search" @click='back()'>返回</el-button>
      </div>
    </div>
    <!-- 订单表格部分 -->
    <div class="ordedatabox">
      <el-table height='520'
         :data="materialformdataList"
         border
         style="width: 100%">
         <el-table-column
           prop="id"
           label="序号"
           width="180">
         </el-table-column>
         <el-table-column
           prop="name"
           label="名称"
           width="180">
         </el-table-column>
         <el-table-column
           prop="type"
           label="型号">
         </el-table-column>
         <el-table-column
           prop="unit"
           label="单位">
         </el-table-column>
         <el-table-column
           prop="amount"
           label="数量">
         </el-table-column>
         <el-table-column
           prop="price"
           label="单价">
         </el-table-column>
          <el-table-column
            prop="supplier"
            label="供应商">
          </el-table-column>
         <el-table-column label="操作">
           <template slot-scope="scope">
            <span class="bluebtn">删除</span>
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
          :page-sizes="[10, 20]"
          :page-size="curCount"
          layout="total, sizes, prev, pager, next, jumper"
          :total="400">
        </el-pagination>
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

                <el-form-item label="供应商">
                  <el-select v-model="materialformdata.sp" placeholder="请选择供应商">
                    <el-option
                      v-for="item in materialSpOptions"
                      :key="item.sp_id"
                      :label="item.sp_name"
                      :value="item.sp_id">
                    </el-option>
                  </el-select>
                </el-form-item>
  
                <el-form-item label="单位">
                  <el-select v-model="materialformdata.unit" placeholder="请选择单位">
                    <el-option
                      v-for="item in materialUnitOptions"
                      :key="item.code"
                      :label="item.desc"
                      :value="item.code">
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
                    placeholder="请选择交货日期">
                  </el-date-picker>
                </el-form-item>
                <el-form-item label="备注">
                  <el-input v-model="materialformdata.note" placeholder="请填写备注信息" ></el-input>
                </el-form-item>
              </el-form>
              <span slot="footer" class="dialog-footer">
                      <el-button @click="materialDialogStatus = false">取 消</el-button>
                      <el-button type="primary" @click="allcConfirm">确 定</el-button>
              </span>
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
      materialformdataList: [{
        code: '',
        id: '',
        name: '',
        type: '',
        unit: '',
        sp: '',
        amount: 1,
        price: '',
        date: '',
        note: ''
      }],
      materialformdata: {
        code: '',
        id: '',
        name: '',
        type: '',
        unit: '',
        sp: '',
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
      materialNameOptions: [],
      materialTypeOptions: [],
      materialSpOptions: [],
      materialUnitOptions: []
    }
  },
  methods: {
    allcConfirm () {
      console.log('try to add a material')
    },
    back () {
      this.$router.push({
        path: './sellorder'
      })
    },
    nameChange (item) {
      var materialUrl = encodeURI(this.HOST + '/material/' + item.name + '/standard')
      this.materialTypeOptions
      this.$http(materialUrl).then(res => {
        this.materialTypeOptions = res.data
      })
    },
    typeChange (item) {
      var materialUrl = encodeURI(this.HOST + '/material/' + this.materialformdata.name + '/standard' + item)
      this.materialTypeOptions
      this.$http(materialUrl).then(res => {
        console.log(res.data)
        this.materialSpOptions = res.data['sp']
        this.materialUnitOptions = res.data['unit']
        console.log(this.materialNameOptions)
      })
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
    // 添加机构
    addMaterial () {
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
      var materialUrl = this.HOST + '/material'
      this.$http(materialUrl).then(res => {
        this.materialNameOptions = res.data
        console.log(this.materialNameOptions)
      })
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
    this.getMaterialList()
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

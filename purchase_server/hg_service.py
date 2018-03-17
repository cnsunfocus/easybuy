# !/usr/bin/python
# -*- coding: utf-8 -*-
#
# 此连接下载 VCForPython27
# https://download.microsoft.com/download/7/9/6/796EF2E4-801B-4FC4-AB28-B59FBF6D907B/VCForPython27.msi

# https://www.cnblogs.com/sjfgod/p/7637584.html

# pip install mysql-connector-python-rf
# pip install MySQLClient
# pip install mysql


import json
import MySQLdb
from decimal import *
from hg_util import *
import datetime
import traceback
from hg_config import db_host, db_pwd, get_db_name
from hg_barcode import decode_bc, aft_bc, get_bc_img
from hg_plan import set_plan_info, set_plan_value
from hg_express import get_exp_info


# 生成条码
def gererate_barcode(request_params):
    js_req = request_params
    js_res = dict()
    if "prod_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the prod_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "length" not in js_req.keys():
        js_res["info"] = "the request body does not contain the length key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "b_covered" not in js_req.keys():
        js_res["info"] = "the request body does not contain the b_covered key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "prop_code" not in js_req.keys():
        js_res["info"] = "the request body does not contain the prop_code key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status

    tenant_id = js_req['tenant_id']
    db_name = get_db_name(tenant_id)
    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        str_sql = "select id from t_prod_inst where prod_id=%d and product_length=%d and b_covered='%s' and prop_code='%s'" % (
            js_req['prod_id'], js_req['length'], js_req['b_covered'], js_req['prop_code'])
        cur.execute(str_sql)
        data = cur.fetchone()
        if data is None:
            str_sql = "insert into t_prod_inst (prod_id,product_length,b_covered,prop_code) values (%d,%d,'%s','%s')" % (
                js_req['prod_id'], js_req['length'], js_req['b_covered'], js_req['prop_code'])
            cur.execute(str_sql)
        str_sql = "select id from t_prod_inst where prod_id=%d and product_length=%d and b_covered='%s' and prop_code='%s'" % (
            js_req['prod_id'], js_req['length'], js_req['b_covered'], js_req['prop_code'])
        cur.execute(str_sql)
        data = cur.fetchone()
        prod_inst_id = data[0]

        str_sql = "select id from t_barcode order by id desc limit 1"  # 获取最大idx
        cur.execute(str_sql)
        data = cur.fetchone()
        if data is None:
            idx = 1
        else:
            idx = data[0] + 1

        bc = tenant_id + '-' + str(prod_inst_id) + '-' + str(idx)
        str_sql = "insert into t_barcode (bar_code,inst_id) values ('%s',%d)" % (bc, prod_inst_id)
        cur.execute(str_sql)
        js_res["barcode"] = bc
        cnn.commit()
        return_string = json.dumps(js_res)
        status = 201
        return return_string, status
    except Exception, e:
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


def mate_in(request_params):
    js_req = request_params
    js_res = dict()
    if "prod_inst_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the prod_inst_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "count" not in js_req.keys():
        js_res["info"] = "the request body does not contain the count key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "store_em_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the store_em_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "purchaser_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the purchaser_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "price" not in js_req.keys():
        js_res["info"] = "the request body does not contain the price key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "receipt" not in js_req.keys():
        js_res["info"] = "the request body does not contain the receipt key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "bar_code" not in js_req.keys():
        js_res["info"] = "the request body does not contain the bar_code key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if js_req['count'] <= 0:
        js_res["info"] = "count could not be 0"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status

    tenant_id = js_req['tenant_id']
    db_name = get_db_name(tenant_id)

    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        str_sql = "select prod_id from t_prod_inst where id=%d" % js_req["prod_inst_id"]
        cur.execute(str_sql)
        data = cur.fetchone()
        if data is None:
            js_res["info"] = "can not find the %d's inst_id " % js_req["prod_id"]
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status
        prod_id = data[0]
        str_sql = "select sp_id from t_product where id=%d" % prod_id
        cur.execute(str_sql)
        data = cur.fetchone()
        if data is None:
            js_res["info"] = "can not find the %d's sp_id " % prod_id
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status
        sp_id = data[0]

        if not decode_bc(cur, js_req["bar_code"], js_req["prod_inst_id"]):
            js_res["info"] = "decode barcode failed, inst_id=%d, barcode=%s" % (
                js_req["prod_inst_id"], js_req["bar_code"])
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status

        str_sql = "insert into t_mate_instock_info (mate_id,mate_barcode,prod_inst_id,purchase_em_id,mis_count," \
                  "mis_em_id,mis_receipt,mate_price,remark,mate_supplier_id) values(%d,'%s',%d,%d,%f,%d,'%s',%f,'%s',%d)" % (
                      prod_id,
                      js_req["bar_code"],
                      js_req["prod_inst_id"],
                      js_req["purchaser_id"],
                      js_req["count"],
                      js_req["store_em_id"],
                      js_req["receipt"],
                      js_req["price"],
                      js_req["remark"], sp_id)
        cur.execute(str_sql)

        aft_bc(cur, js_req["bar_code"], js_req["prod_inst_id"], js_req["count"], 0)
        js_res["info"] = "success"
        cnn.commit()
        return_string = json.dumps(js_res)
        status = 201
        return return_string, status
    except Exception, e:
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


def mate_out(request_params):
    js_req = request_params
    js_res = dict()
    if "sub_plan_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the sub_plan_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "prod_inst_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the prod_inst_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "count" not in js_req.keys():
        js_res["info"] = "the request body does not contain the count key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "bar_code" not in js_req.keys():
        js_res["info"] = "the request body does not contain the bar_code key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "store_em_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the store_em_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "receipt" not in js_req.keys():
        js_res["info"] = "the request body does not contain the receipt key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "consumer_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the consumer_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "remark" not in js_req.keys():
        js_res["info"] = "the request body does not contain the remark key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status

    tenant_id = js_req['tenant_id']
    db_name = get_db_name(tenant_id)
    if js_req['count'] <= 0:
        js_res["info"] = "count could not be 0"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status

    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        prod_inst_id = js_req["prod_inst_id"]

        if not decode_bc(cur, js_req["bar_code"], js_req["prod_inst_id"]):
            js_res["info"] = "decode barcode failed, inst_id=%d, barcode=%s" % (
                js_req["prod_inst_id"], js_req["bar_code"])
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status

        str_sql = "select a.prod_type,a.id from t_product as a, t_prod_inst as b where a.id=b.prod_id and b.id=%d" % prod_inst_id
        cur.execute(str_sql)
        data = cur.fetchone()
        if data is None:
            js_res["info"] = "can not find the prod_id of the inst_id is %d" % js_req["prod_inst_id"]
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status
        prod_type = data[0]
        prod_id = data[1]

        str_sql = "select b.id,a.salesman,a.customer,b.to_product_amount,b.real_instock_amount,b.status from t_plan as a, t_plan_product as b where a.id=b.plan_id and b.id=%d" % \
                  js_req['sub_plan_id']
        cur.execute(str_sql)
        data = cur.fetchone()
        if data is None:
            js_res["info"] = "can not find the sub_plan info id=%d" % js_req["sub_plan_id"]
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status
        if not (('PULL_' in data[5]) or ('PUSH_' in data[5])):
            js_res["info"] = "the sub_plan_id[%d]'s status is %s, can not mate out." % (js_req["sub_plan_id"], data[5])
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status
        sub_plan_id = data[0]
        sale_man_id = data[1]
        cust_id = data[2]

        if data[3] <= data[4]:  # 如果已经生产完就不能领料了
            js_res["info"] = "to_product_amount=real_instock_amount, can not mate out, the sub_plan_id=%d" % js_req[
                "sub_plan_id"]
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status

        str_sql = "select stock_count from t_barcode where inst_id=%d and bar_code='%s'" % (
            prod_inst_id, js_req["bar_code"])
        cur.execute(str_sql)
        data = cur.fetchone()
        cur_count = data[0]
        if js_req['count'] > cur_count:
            js_res["info"] = "mateout count can not over the barcode's stockcount[%f], barcode=%s,inst_id=%d" % (
                cur_count, js_req["bar_code"], prod_inst_id)
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status

        if prod_type == '原料':
            str_sql = "insert into t_mate_outstock_info (mate_id,mate_barcode,prod_inst_id,consumer_id,mos_count," \
                      "mos_em_id,mos_receipt,plan_id,remark) values(%d,'%s',%d,%d,%f,%d,'%s',%d,'%s')" % (
                          prod_id,
                          js_req["bar_code"],
                          prod_inst_id,
                          js_req["consumer_id"],
                          js_req["count"],
                          js_req["store_em_id"],
                          js_req["receipt"],
                          sub_plan_id,
                          js_req["remark"])
        else:  # 半成品
            str_sql = "insert into t_prod_outstock_info (prod_id,prod_barcode,prod_inst_id,pos_count,pos_em_id," \
                      "pos_receipt,plan_id,pos_salesperson_id,pos_customer_id,remark) values" \
                      "(%d,'%s',%d,%f,%d,'%s',%d,%d,%d,'%s')" % (
                          prod_id,
                          js_req["bar_code"],
                          prod_inst_id,
                          js_req["count"],
                          js_req["store_em_id"],
                          js_req["receipt"],
                          sub_plan_id,
                          sale_man_id,
                          cust_id,
                          js_req["remark"])
        cur.execute(str_sql)

        aft_bc(cur, js_req["bar_code"], prod_inst_id, js_req["count"], 1)
        set_plan_info(cur, js_req["store_em_id"], sub_plan_id, 'PULL_MATERIAL', 'PUSH_PRODUCT')
        cnn.commit()
        js_res["info"] = "success"
        return_string = json.dumps(js_res)
        status = 201
        return return_string, status
    except Exception, e:
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


def prod_in(request_params):
    js_req = request_params
    js_res = dict()
    if "sub_plan_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the sub_plan_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "prod_inst_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the prod_inst_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "count" not in js_req.keys():
        js_res["info"] = "the request body does not contain the count key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "bar_code" not in js_req.keys():
        js_res["info"] = "the request body does not contain the bar_code key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "store_em_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the store_em_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "receipt" not in js_req.keys():
        js_res["info"] = "the request body does not contain the receipt key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "remark" not in js_req.keys():
        js_res["info"] = "the request body does not contain the remark key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if js_req['count'] <= 0:
        js_res["info"] = "count could not be 0"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status

    tenant_id = js_req['tenant_id']
    db_name = get_db_name(tenant_id)
    prod_inst_id = js_req['prod_inst_id']
    sub_plan_id = js_req['sub_plan_id']

    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()

        str_sql = "select b.product_id,b.to_product_amount,b.real_instock_amount,a.order_type,a.salesman,b.status from t_plan as a, t_plan_product as b where a.id=b.plan_id and b.id=%d" % \
                  sub_plan_id
        cur.execute(str_sql)
        data = cur.fetchone()
        if data is None:
            js_res["info"] = "can not find the sub_plan_id=%d info." % js_req["sub_plan_id"]
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status
        if not (('PULL_' in data[5]) or ('PUSH_' in data[5])):
            js_res["info"] = "the sub_plan_id[%d]'s status is %s, can not prod in." % (js_req["sub_plan_id"], data[5])
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status
        prod_id = data[0]
        all_product_count = data[1]
        cur_instock_amout = data[2]  # 已入库数量
        to_instock_amout = all_product_count - cur_instock_amout  # 待入库数量 = 转产量-已入库量
        order_type = data[3]
        sale_id = data[4]

        if to_instock_amout <= 0:  # 如果已经生产完就不能再入库了
            js_res["info"] = "to_product_amount=real_instock_amount, can not prod out, the sub_plan_id=%d" % js_req[
                "sub_plan_id"]
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status

        if js_req['count'] > to_instock_amout:
            js_res[
                "info"] = "%f can not over the (to_product_amount-real_instock_amout[%f]), barcode='%s',inst_id=%d" % (
                js_req["count"], to_instock_amout, js_req["bar_code"], prod_inst_id)
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status

        if not decode_bc(cur, js_req["bar_code"], prod_inst_id):
            js_res["info"] = "decode barcode failed, inst_id=%d, barcode=%s" % (prod_inst_id, js_req["bar_code"])
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status

        str_sql = "insert into t_prod_instock_info (prod_id,prod_barcode,prod_inst_id,pis_count,pis_em_id,pis_receipt," \
                  "plan_id,prod_cost,remark) values(%d,'%s',%d,%f,%d,'%s',%d,%f,'%s')" % (prod_id,
                                                                                          js_req["bar_code"],
                                                                                          prod_inst_id,
                                                                                          js_req["count"],
                                                                                          js_req["store_em_id"],
                                                                                          js_req["receipt"],
                                                                                          sub_plan_id,
                                                                                          0,
                                                                                          js_req["remark"])
        cur.execute(str_sql)
        aft_bc(cur, js_req["bar_code"], prod_inst_id, js_req["count"], 0)
        set_plan_info(cur, js_req["store_em_id"], sub_plan_id, 'PUSH_PRODUCT', 'PULL_PRODUCT')
        set_plan_value(cur, sub_plan_id, 'real_instock_amount', cur_instock_amout + js_req['count'])
        if to_instock_amout == js_req['count'] and order_type == "PRODUCTION":
            set_plan_info(cur, js_req["store_em_id"], sub_plan_id, 'PUSH_PRODUCT', 'PLAN_OVER')
            # 生成一条备货清单信息
            str_sql = "insert into s_prep_info(prod_id,prod_inst_id,pp_count,em_id,sub_plan_id) values(%d,%d,%f,%d,%d)" % (
                prod_id, prod_inst_id, all_product_count, sale_id, sub_plan_id)
            cur.execute(str_sql)
        cnn.commit()
        js_res["info"] = "success"
        return_string = json.dumps(js_res)
        status = 201
        return return_string, status
    except Exception, e:
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


# 订单发货（产品、半成品、原料）
def prod_out(request_params):
    js_req = request_params
    js_res = dict()
    if "sub_plan_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the sub_plan_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "prod_inst_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the prod_inst_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "count" not in js_req.keys():
        js_res["info"] = "the request body does not contain the count key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "bar_code" not in js_req.keys():
        js_res["info"] = "the request body does not contain the bar_code key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "store_em_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the store_em_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "receipt" not in js_req.keys():
        js_res["info"] = "the request body does not contain the receipt key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "remark" not in js_req.keys():
        js_res["info"] = "the request body does not contain the remark key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if js_req['count'] <= 0:
        js_res["info"] = "count could not be 0"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    tenant_id = js_req['tenant_id']
    db_name = get_db_name(tenant_id)

    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        str_sql = "select a.salesman,a.customer,b.product_id,b.product_amount,b.real_amount," \
                  "DATE_FORMAT(a.order_date,'%%Y'),DATE_FORMAT(a.order_date,'%%m'),b.product_price," \
                  "a.order_date,a.id,a.order_type,b.status from t_plan as a, t_plan_product as b where a.id=b.plan_id " \
                  "and b.id=%d" % js_req['sub_plan_id']
        cur.execute(str_sql)
        data = cur.fetchone()
        if data is None:
            js_res["info"] = "can not find the sub_plan_id=%d info." % js_req["sub_plan_id"]
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status
        if 'SALE' not in data[10]:
            js_res["info"] = "the sub_plan_id[%d] is not sales plan, can not prod out." % js_req["sub_plan_id"]
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status
        if not (('PULL_' in data[11]) or ('PUSH_' in data[11])):
            js_res["info"] = "the sub_plan_id[%d]'s status is %s, can not prod out." % (js_req["sub_plan_id"], data[11])
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status

        prod_inst_id = js_req['prod_inst_id']
        sub_plan_id = js_req['sub_plan_id']
        sale_id = data[0]
        cust_id = data[1]
        prod_id = data[2]
        all_product_count = data[3]
        to_outstock_amout = data[3] - data[4]  # 待发货数量
        cur_outstock_amout = data[4]  # 已发货量
        od_year = int(data[5])
        od_month = "m_%d" % int(data[6])
        price = data[7]
        od_date = data[8]
        plan_id = data[9]

        if to_outstock_amout <= 0:  # 如果待发货数量为0 则表示已经发完了
            js_res["info"] = "to_product_amount=real_instock_amount, can not prod out, the sub_plan_id=%d" % js_req[
                "sub_plan_id"]
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status

        if not decode_bc(cur, js_req["bar_code"], prod_inst_id):
            js_res["info"] = "decode barcode failed, inst_id=%d, barcode=%s" % (prod_inst_id, js_req["bar_code"])
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status

        if js_req['count'] > to_outstock_amout:
            js_res["info"] = "%f can not over the (product_amout-real_amount[%f]), barcode='%s',inst_id=%d" % (
                js_req["count"], to_outstock_amout, js_req["bar_code"], prod_inst_id)
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status

        str_sql = "select stock_count from t_barcode where bar_code='%s' and inst_id=%d" % (
            js_req["bar_code"], prod_inst_id)
        cur.execute(str_sql)
        data = cur.fetchone()
        if js_req['count'] > data[0]:
            js_res["info"] = "%f can not over the barcode's stockcount[%f], barcode='%s',inst_id=%d" % (
                js_req["count"], data[0], js_req["bar_code"], prod_inst_id)
            return_string = json.dumps(js_res)
            status = 404
            return return_string, status
        str_sql = "select prod_type from t_product where id=%d" % prod_id
        cur.execute(str_sql)
        data = cur.fetchone()
        if data[0] != '原料':
            str_sql = "insert into t_prod_outstock_info (prod_id,prod_barcode,prod_inst_id,pos_count,pos_em_id,pos_receipt," \
                      "plan_id,pos_salesperson_id,pos_customer_id,remark) values(%d,'%s',%d,%f,%d,'%s',%d,%d,%d,'%s')" % (
                          prod_id,
                          js_req["bar_code"],
                          prod_inst_id,
                          js_req["count"],
                          js_req["store_em_id"],
                          js_req["receipt"],
                          sub_plan_id,
                          sale_id,
                          cust_id,
                          js_req["remark"])
        else:
            str_sql = "insert into t_mate_outstock_info (mate_id,mate_barcode,prod_inst_id,consumer_id,mos_count," \
                      "mos_em_id,mos_receipt,plan_id,remark) values(%d,'%s',%d,%d,%f,%d,'%s',%d,'%s')" % (
                          prod_id,
                          js_req["bar_code"],
                          prod_inst_id,
                          sale_id,
                          js_req["count"],
                          js_req["store_em_id"],
                          js_req["receipt"],
                          sub_plan_id,
                          js_req["remark"])
        cur.execute(str_sql)

        aft_bc(cur, js_req["bar_code"], prod_inst_id, js_req["count"], 1)
        set_plan_info(cur, js_req["store_em_id"], sub_plan_id, 'PUSH_PRODUCT', 'PULL_PRODUCT')
        set_plan_value(cur, sub_plan_id, 'real_amount', cur_outstock_amout + js_req['count'])
        if to_outstock_amout == js_req['count']:
            set_plan_info(cur, js_req["store_em_id"], sub_plan_id, 'PULL_PRODUCT', 'PLAN_OVER')

            # 更新销售人员统计销售信息
            str_sql = "select * from s_sales_by_em where em_id=%d and stat_year=%d" % (sale_id, od_year)
            cur.execute(str_sql)
            data = cur.fetchone()
            if data is None:
                str_sql = "insert into s_sales_by_em(em_id, stat_year) values(%d,%d)" % (sale_id, od_year)
                cur.execute(str_sql)
            str_sql = "update s_sales_by_em set %s=%s+%f where em_id=%d and stat_year=%d" % (
                od_month, od_month, Decimal.from_float(price) * all_product_count, sale_id, od_year)
            cur.execute(str_sql)

            # 更新订货统计信息
            str_sql = "select * from s_sales_by_prod where prod_id=%d and stat_year=%d" % (prod_id, od_year)
            cur.execute(str_sql)
            data = cur.fetchone()
            if data is None:
                str_sql = "insert into s_sales_by_prod(prod_id, stat_year) values(%d,%d)" % (prod_id, od_year)
                cur.execute(str_sql)
            str_sql = "update s_sales_by_prod set %s=%s+%d where prod_id=%d and stat_year=%d" % (
                od_month, od_month, Decimal.from_float(price) * all_product_count, prod_id, od_year)
            cur.execute(str_sql)

            # 更新销售清单(按发货)统计信息
            str_sql = "insert into s_sales_info (prod_id,em_id,sale_count,sale_price,sale_money," \
                      "plan_id,pos_date,order_date) values(%d,%d,%f,%f,%f,%d,'%s','%s')" % (prod_id,
                                                                                            sale_id,
                                                                                            js_req['count'],
                                                                                            price,
                                                                                            price * js_req['count'],
                                                                                            plan_id,
                                                                                            datetime.datetime.now().strftime(
                                                                                                "%Y-%m-%d %H:%M:%S"),
                                                                                            od_date.strftime(
                                                                                                "%Y-%m-%d %H:%M:%S"))
            cur.execute(str_sql)
        cnn.commit()
        js_res["info"] = "success"
        return_string = json.dumps(js_res)
        status = 201
        return return_string, status
    except Exception, e:
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


# 退料
def mate_return(request_params):
    js_req = request_params
    js_res = dict()
    if "sub_plan_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the sub_plan_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "count" not in js_req.keys():
        js_res["info"] = "the request body does not contain the count key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "type" not in js_req.keys():
        js_res["info"] = "the request body does not contain the type key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "store_em_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the store_em_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "receipt" not in js_req.keys():
        js_res["info"] = "the request body does not contain the receipt key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "remark" not in js_req.keys():
        js_res["info"] = "the request body does not contain the remark key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if js_req['count'] <= 0:
        js_res["info"] = "count could not be 0"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status

    sub_plan_id = js_req['sub_plan_id']
    tenant_id = js_req['tenant_id']
    db_name = get_db_name(tenant_id)

    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        ob_type = js_req['type']  # 0:半成品， 1:原料
        if ob_type == 0:  # 原料，则到原料出库记录表中去找
            str_sql = "select a.prod_inst_id,a.mate_barcode,a.mos_count from t_mate_outstock_info as a, t_product as b, t_prod_inst as c where  b.id=c.prod_id and c.id=a.prod_inst_id and b.id=a.mate_id and a.id=%d and a.plan_id=%d" % (
                js_req['id'], sub_plan_id)
            cur.execute(str_sql)
            data = cur.fetchone()
            if data is None:
                js_res["info"] = "can not find the mateout info, id=%d, sub_plan_id=%d" % (js_req['id'], sub_plan_id)
                return_string = json.dumps(js_res)
                status = 404
                return return_string, status
            prod_inst_id = data[0]
            bc = data[1]
            out_count = data[2]
            if js_req['count'] > out_count:
                js_res["info"] = "return object count could not over the org count."
                return_string = json.dumps(js_res)
                status = 404
                return return_string, status
            cur_out_count = out_count - js_req['count']
            str_remark = get_present_time() + ": mate return, the info is :old mos_count=%f, new mos_count=%f" % (
                out_count, cur_out_count)

            str_sql = "update t_mate_outstock_info set mos_count=%f, remark='%s' where id=%d" % (
                cur_out_count, str_remark, js_req['id'])
            cur.execute(str_sql)
            aft_bc(cur, bc, prod_inst_id, js_req["count"], 0)
        else:  # 半成品，则到半成品出库记录表中去找
            str_sql = "select a.prod_inst_id,a.prod_barcode,a.pos_count from t_prod_outstock_info as a, t_product as b, t_prod_inst as c where  b.id=c.prod_id and c.id=a.prod_inst_id and b.id=a.prod_id and a.id=%d and a.plan_id=%d" % (
                js_req['id'], sub_plan_id)
            cur.execute(str_sql)
            data = cur.fetchone()
            if data is None:
                js_res["info"] = "can not find the prodoud info, id=%d, sub_plan_id=%d" % (js_req['id'], sub_plan_id)
                return_string = json.dumps(js_res)
                status = 404
                return return_string, status
            prod_inst_id = data[0]
            bc = data[1]
            out_count = data[2]
            if js_req['count'] > out_count:
                js_res["info"] = "return object count could not over the org count."
                return_string = json.dumps(js_res)
                status = 404
                return return_string, status
            cur_out_count = out_count - js_req['count']
            str_remark = get_present_time() + ": prod return, the info is :old pos_count=%f, new pos_count=%f" % (
                out_count, cur_out_count)
            str_sql = "update t_prod_outstock_info set mos_count=%f, remark='%s' where id=%d" % (
                cur_out_count, str_remark, js_req['id'])
            cur.execute(str_sql)
            aft_bc(cur, bc, prod_inst_id, js_req["count"], 0)
        cnn.commit()
        js_res["info"] = "success"
        return_string = json.dumps(js_res)
        status = 201
        return return_string, status
    except Exception, e:
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


# 根据条码内容生成图片并返回URL给客户端
def get_img_by_barcode_content(request_params):
    js_req = request_params
    js_res = dict()
    if "bar_code" not in js_req.keys():
        js_res["info"] = "the request body does not contain the bar_code key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    js_res["url"] = get_bc_img(js_req["tenant_id"], js_req["bar_code"])
    js_res["info"] = "success"
    return_string = json.dumps(js_res)
    status = 201
    return return_string, status


def get_express_info(request_params):
    exp_id = request_params['exp_id']
    js_res = get_exp_info(exp_id)
    return_string = json.dumps(js_res)
    status = 201
    return return_string, status


def get_all_sp(request_params):
    js_req = request_params
    js_res = dict()
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    tenant_id = js_req['tenant_id']
    db_name = get_db_name(tenant_id)

    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        str_sql = "select id, sp_name, sp_addr, sp_contacter, sp_contacter_phone from t_supplier p where p.status='%s'" % "有效"
        cur.execute(str_sql)
        data = cur.fetchall()
        js_res = []
        for r in data:
            js_res.append({'sp_id': r[0], 'sp_name': r[1], 'sp_addr': r[2], 'sp_contact': r[3], 'sp_phone': r[4]})
        return_string = json.dumps(js_res)
        status = 200
        return return_string, status
    except Exception, e:
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


def get_material_by_sp(request_params):
    js_req = request_params
    js_res = dict()
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    tenant_id = js_req['tenant_id']
    db_name = get_db_name(tenant_id)
    sp_id = js_req['sp_id']
    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()

        str_sql = "select distinct prod_name from t_product where status='有效' and prod_type not in ('半成品','产品') and sp_id = '%s' order by code asc" % sp_id
        #str_sql = "select distinct(prod_name) from t_product where prod_type='原料' and status = '有效' and sp_id = '%s'" % sp_id
        cur.execute(str_sql)
        data = cur.fetchall()
        js_res = []
        for r in data:
            js_res.append({'name': r[0]})
        return_string = json.dumps(js_res)
        status = 200
        return return_string, status
    except Exception, e:
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


def get_standards(request_params):
    js_req = request_params
    js_res = dict()
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    tenant_id = js_req['tenant_id']
    db_name = get_db_name(tenant_id)
    name = js_req['name']
    sp_id = js_req['sp_id']
    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        str_sql = "select DISTINCT(prod_gb_standard) from t_product p where p.prod_type not in ('半成品','产品') and p.status = '有效' " \
                 "and p.prod_name = '%s' and sp_id = '%s'" % (name, sp_id)
        #str_sql = "select DISTINCT(prod_gb_standard) from t_product p where p.prod_type='原料' and p.status = '有效' " \
        #          "and p.prod_name = '%s' and sp_id = '%s'" % (name, sp_id)
        cur.execute(str_sql)
        data = cur.fetchall()
        js_res = []
        for r in data:
            js_res.append(r[0])

        return_string = json.dumps(js_res)
        status = 200
        return return_string, status
    except Exception, e:
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


def get_all_units(request_params):
    js_req = request_params
    js_res = dict()
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    tenant_id = js_req['tenant_id']
    name = js_req['name']
    standard = js_req['standard']
    sp_id = js_req['sp_id']
    db_name = get_db_name(tenant_id)
    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        cur.execute(
          "select p.unit, u.desc from t_product p, t_unit u "
          "where p.prod_type not in ('半成品','产品') and p.status = '%s' "
          "and p.prod_name = '%s' and prod_gb_standard = '%s' and u.code = p.unit and p.sp_id = '%s'"
          % (u"有效", name, standard, sp_id))

        results = cur.fetchall()
        ret_data = {}
        unit_data = []

        for r in results:
          unit_data.append({"code": r[0], "desc": r[1]})

        tmp = {}
        unit_final_data = []
        for sp in unit_data:
          if tmp.has_key(sp['code']):
            continue
          tmp[sp['code']] = sp['desc']
          unit_final_data.append(sp)

        ret_data["unit"] = unit_final_data

        return_string = json.dumps(ret_data)
        status = 200
        return return_string, status
    except Exception, e:
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


def post_order(request_params):
    js_req = request_params
    js_res = dict()
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    tenant_id = js_req['tenant_id']
    db_name = get_db_name(tenant_id)
    supplier = js_req['supplier']
    material_list = js_req['data']
    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        str_sql = "insert into t_order_list (order_id, order_date, supplier, sp_addr, sp_contact, sp_phone, sp_fax, " \
                  "sp_email, contact, addr, phone, fax, email) values ('%s', '%s', '%s', '%s', '%s', '%s', '%s', " \
                  "'%s', '%s', '%s', '%s', '%s', '%s')" % (js_req['order_id'], js_req['order_date'],
                                                           supplier['sp_name'], supplier['sp_addr'],
                                                           supplier['sp_contact'], supplier['sp_phone'],
                                                           supplier['sp_phone'], supplier['sp_phone'],
                                                           js_req['contact'], js_req['addr'],
                                                           js_req['phone'], js_req['fax'], js_req['email'])
        cur.execute(str_sql)
        for m in material_list:
            str_sql = "insert into t_order_detail (order_id, material, price, amount, standard, note, recv_date) values ('%s'," \
                      "'%s', %s, %s, '%s', '%s', '%s')" % (js_req['order_id'], m['name'], m['price'], m['amount'],
                                                     m['type'], m['note'], m['date'])
            cur.execute(str_sql)
        cnn.commit()
        status = 201
        return "0", status
    except Exception, e:
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


def get_orders(request_params):
    js_req = request_params
    js_res = dict()
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    tenant_id = js_req['tenant_id']
    cur_count = js_req['cur_count']
    cur_page = js_req['cur_page']
    start_idx = (cur_page - 1) * cur_count  # 2 2    --

    db_name = get_db_name(tenant_id)
    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        str_sql = "select o.id from t_order_list o,  t_order_detail d where o.order_id = d.order_id group by d.order_id"
        cur.execute(str_sql)
        data = cur.fetchall()
        all_record_count = len(data)

        cur = cnn.cursor()
        str_sql = "select o.id, o.order_id, o.supplier, o.sp_contact, o.sp_phone, o.status, d.material as name, " \
                  "sum(d.price * d.amount) as totalPrice, o.order_date  from t_order_list o, t_order_detail d where " \
                  "o.order_id = d.order_id  group by d.order_id limit %d, %d" % (start_idx, cur_count)
        cur.execute(str_sql)
        data = cur.fetchall()

        js_res = dict()
        js_res['count'] = all_record_count
        js_res['data'] = []
        for r in data:
            js_res['data'].append({'id': r[0], 'order_id': r[1], 'supplier': r[2], 'sp_contact': r[3], 'sp_phone': r[4],
                                   'status': r[5], 'name': r[6], 'totalPrice': float(r[7]),'order_date': r[8].strftime('%Y-%m-%d')})

        return_string = json.dumps(js_res)
        status = 200
        return return_string, status
    except Exception, e:
        import traceback
        traceback.print_exc()
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


def get_od(request_params):
    js_req = request_params
    js_res = dict()
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    tenant_id = js_req['tenant_id']
    order_id = js_req['order_id']
    db_name = get_db_name(tenant_id)
    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        str_sql = "select id, order_id, order_date, status, supplier, sp_addr, sp_contact, sp_phone, sp_fax, " \
                  "sp_email, contact, addr, phone, fax, email from t_order_list where order_id = '%s'" % order_id
        cur.execute(str_sql)
        data = cur.fetchone()
        js_res = dict()
        js_res['order_id'] = data[1]
        js_res['order_date'] = data[2].strftime('%Y-%m-%d')
        js_res['status'] = data[3]
        js_res['supplier'] = {}
        js_res['supplier']['name'] = data[4]
        js_res['supplier']['addr'] = data[5]
        js_res['supplier']['contact'] = data[6]
        js_res['supplier']['phone'] = data[7]
        js_res['supplier']['fax'] = data[8]
        js_res['supplier']['mail'] = data[9]

        js_res['buyer'] = {}
        js_res['buyer']['contact'] = data[10]
        js_res['buyer']['addr'] = data[11]
        js_res['buyer']['phone'] = data[12]
        js_res['buyer']['fax'] = data[13]
        js_res['buyer']['mail'] = data[14]

        cur.execute("select id, order_id, material, amount, price, standard, note, recv_date, unit from t_order_detail"
                    " where order_id = '%s'" % order_id)

        results = cur.fetchall()
        js_res['order_detail'] = []
        for r in results:
            js_res['order_detail'].append({'id': r[0],
                                           'order_id': r[1],
                                           'name': r[2],
                                           'amount': r[3],
                                           'price': float(r[4]),
                                           'standard': r[5],
                                           'note': r[6],
                                           'date': r[7].strftime('%Y-%m-%d'),
                                           'unit': r[8]})
        return_string = json.dumps(js_res)
        status = 200
        return return_string, status
    except Exception, e:
        #traceback.print_exc()
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


def qry_order_progress_list(request_params):
    js_req = request_params
    js_res = dict()
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    tenant_id = js_req['tenant_id']
    order_id = js_req['order_id']
    db_name = get_db_name(tenant_id)
    try:
        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        str_sql = "select o.id, o.order_id, o.op_date, o.operator, o.note, o.new_status, o.status from " \
                  "t_order_progress o where o.order_id = '%s' order by o.op_date desc" % order_id
        cur.execute(str_sql)
        js_res = dict()
        js_res['order_id'] = order_id
        js_res['progress'] = []
        data = cur.fetchall()
        for r in data:
          js_res['progress'].append({'id': r[0],
                                     'order_id': r[1],
                                     'op_date': r[2].strftime('%Y-%m-%d %H:%M:%S'),
                                     'operator': r[3],
                                     'note': r[4],
                                     'new_status': r[5],
                                     'status': r[6]})
        str_sql = "select status from t_order_list where order_id = '%s'" % order_id
        cur.execute(str_sql)
        data = cur.fetchone()
        js_res['status'] = data[0]
        return_string = json.dumps(js_res)
        status = 200
        return return_string, status
    except Exception, e:
        traceback.print_exc()
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()


def add_progress(request_params):
    js_req = request_params
    js_res = dict()
    if "tenant_id" not in js_req.keys():
        js_res["info"] = "the request body does not contain the tenant_id key"
        return_string = json.dumps(js_res)
        status = 404
        return return_string, status
    tenant_id = js_req['tenant_id']
    db_name = get_db_name(tenant_id)
    try:
        order_id = js_req['order_id']
        op_date = datetime.datetime.strptime(js_req['op_date'], '%Y-%m-%d %H:%M:%S')
        operator = js_req['operator']
        note = js_req['note']
        new_status = js_req['new_status']
        status = js_req['status']

        cnn = MySQLdb.connect(db_host, "root", db_pwd, db_name, charset='utf8')
        cur = cnn.cursor()
        str_sql = "insert into t_order_progress (order_id, op_date, operator, note, new_status, status) values" \
                  " ('%s','%s','%s','%s',%s, %s) " % (order_id, op_date, operator, note, new_status, status)
        cur.execute(str_sql)
        str_sql = "update t_order_list set status = %s where order_id = '%s'" % (new_status, order_id)
        cur.execute(str_sql)

        js_res = {'info': 'success'}
        return_string = json.dumps(js_res)
        status = 201
        cnn.commit()
        return return_string, status
    except Exception, e:
        traceback.print_exc()
        cnn.rollback()
        js_res['info'] = e.message
        return_string = json.dumps(js_res)
        status = 401
        return return_string, status
    finally:
        if cur:
            cur.close()
        if cnn:
            cnn.close()

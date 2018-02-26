# !/usr/bin/python
# -*- coding: utf-8 -*-


import traceback
import MySQLdb
from flask import Flask, request, g
from hg_service import *
from hg_config import db_host, db_pwd, get_db_name

__author__ = '10201337'

hg_app = Flask(__name__)

g_log = True
g_detail_log = True


@hg_app.before_request
def before_request():
    g.start = time.time()


@hg_app.after_request
def aft_request(response):
    url = request.url
    msg = '%s:%s[%s]' % (get_present_time(), url, request.method)
    req_body = request.data if request.data else ''
    res_body = response.data
    res_code = response.status_code
    t_span = time.time() - g.start
    if g_log:
        s_msg = '%s[%2.2fs],%d' % (msg, t_span, res_code)
        print s_msg
        write_log(s_msg)
    if g_detail_log and g_log:
        s_msg = '%s[%2.2fs],%d req body=%s, res body=%s' % (msg, t_span, res_code, req_body, res_body)
        print s_msg
        write_detail_log(s_msg)
    return response


@hg_app.errorhandler(500)
def err_500(error):
    err_msg = traceback.format_exc()
    try:
        write_log('exception this url=[%s:%s], the error is [%s],the exception is [%s]' % (
            request.url, request.method, error, err_msg))
    except:
        err_msg = traceback.format_exc()
        write_log('large exception_2 [%s]' % err_msg)
        pass
    return err_msg, 500


# 原料入库,tenant_id :
@hg_app.route('/api/<tenant_id>/matein', methods=['POST'])
def post_matein(tenant_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    s_temp = json.dumps(request_params)
    request_params = json.loads(s_temp.decode())
    if 'POST' in request.method:
        ret_content, status = mate_in(request_params)
        ret_content = ret_content.encode()
        return ret_content, status


@hg_app.route('/api/<tenant_id>/mateout', methods=['POST'])
def post_mateout(tenant_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    s_temp = json.dumps(request_params)
    request_params = json.loads(s_temp.decode())
    if 'POST' in request.method:
        ret_content, status = mate_out(request_params)
        ret_content = ret_content.encode()
        return ret_content, status


@hg_app.route('/api/<tenant_id>/prodin', methods=['POST'])
def post_prodin(tenant_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    s_temp = json.dumps(request_params)
    request_params = json.loads(s_temp.decode())
    if 'POST' in request.method:
        ret_content, status = prod_in(request_params)
        ret_content = ret_content.encode()
        return ret_content, status


@hg_app.route('/api/<tenant_id>/prodout', methods=['POST'])
def post_prodout(tenant_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    s_temp = json.dumps(request_params)
    request_params = json.loads(s_temp.decode())
    if 'POST' in request.method:
        ret_content, status = prod_out(request_params)
        ret_content = ret_content.encode()
        return ret_content, status


# 退料
@hg_app.route('/api/<tenant_id>/mate_return', methods=['POST'])
def post_mate_return(tenant_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    s_temp = json.dumps(request_params)
    request_params = json.loads(s_temp.decode())  # 在最开始入口出作一次解码，把字符都变成python内部的默认编码方式
    if 'POST' in request.method:
        ret_content, status = mate_return(request_params)  # 处理过程中都使用python系统默认的编码
        ret_content = ret_content.encode()  # 在最后出口出作一次编码，把字符都由python内部的编码转成utf-8
        return ret_content, status


# 生成一个新的条码
@hg_app.route('/api/<tenant_id>/generate_barcode', methods=['POST'])
def post_generate_barcode(tenant_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    s_temp = json.dumps(request_params)
    request_params = json.loads(s_temp.decode())
    if 'POST' in request.method:
        ret_content, status = gererate_barcode(request_params)
        ret_content = ret_content.encode()
        return ret_content, status


# 获取条码的二维码图片
@hg_app.route('/api/<tenant_id>/get_barcode_img', methods=['POST'])
def post_barcode_img(tenant_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    s_temp = json.dumps(request_params)
    request_params = json.loads(s_temp.decode())
    if 'POST' in request.method:
        ret_content, status = get_img_by_barcode_content(request_params)
        ret_content = ret_content.encode()
        return ret_content, status


# 获取快递信息
@hg_app.route('/api/<tenant_id>/get_express_info/<exp_id>', methods=['POST'])
def qry_exp_info(tenant_id, exp_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    request_params['exp_id'] = exp_id
    s_temp = json.dumps(request_params)
    request_params = json.loads(s_temp.decode())
    if 'POST' in request.method:
        ret_content, status = get_express_info(request_params)
        ret_content = ret_content.encode()
        return ret_content, status


@hg_app.route('/api/<tenant_id>/supplier')
def get_echo(tenant_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    if 'GET' in request.method:
        ret_content = 'Hello world'
        status = 200
        return ret_content, status


@hg_app.route('/api/<tenant_id>/material/supplier/<sp_id>')
def get_material(tenant_id, sp_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    request_params['sp_id'] = sp_id
    if 'GET' in request.method:
        ret_content, status = get_material_by_sp(request_params)
        ret_content = ret_content.encode()
        return ret_content, status


@hg_app.route('/api/<tenant_id>/material/<name>/supplier/<sp_id>/standard')
def get_standard_list(tenant_id, name, sp_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    request_params['name'] = name
    request_params['sp_id'] = sp_id
    if 'GET' in request.method:
        ret_content, status = get_standards(request_params)
        ret_content = ret_content.encode()
        return ret_content, status


@hg_app.route('/api/<tenant_id>/suppliers')
def get_suppliers(tenant_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    if 'GET' in request.method:
        ret_content, status = get_all_sp(request_params)
        ret_content = ret_content.encode()
        return ret_content, status


@hg_app.route('/api/<tenant_id>/material/<name>/standard/<standard>/supplier/<sp_id>')
def get_units(tenant_id, name, standard, sp_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    request_params['name'] = name
    request_params['standard'] = standard
    request_params['sp_id'] = sp_id
    if 'GET' in request.method:
        ret_content, status = get_all_units(request_params)
        ret_content = ret_content.encode()
        return ret_content, status

@hg_app.route('/api/<tenant_id>/material/<string:name>/standard/<string:standard>/supplier/<string:sp_id>/unit/<string:unit>')
def get_price(tenant_id, name, standard, sp_id, unit):
  conn = MySQLdb.connect(host=db_host, user='root', passwd=db_pwd, db='njrkgy',
                         charset='utf8')
  cur = conn.cursor()
  sql = "select p.price from t_product p " \
        "where p.prod_type='%s' and p.status = '%s' and p.prod_name = '%s' " \
        "and p.prod_gb_standard = '%s' and p.sp_id = '%s' and p.unit = '%s'" \
        % (u"原料", u"有效", name, standard, sp_id, unit)

  cur.execute(sql)

  results = cur.fetchone()
  ret_data = {}

  ret_data["price"] = float(results[0])

  return json.dumps(ret_data)


@hg_app.route('/api/<tenant_id>/order', methods=['POST'])
def add_order(tenant_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    if 'POST' in request.method:
        ret_content, status = post_order(request_params)
        return ret_content, status

@hg_app.route('/api/<tenant_id>/order', methods=['PUT'])
def update_order(tenant_id):
  conn = MySQLdb.connect(host=db_host, user='root', passwd=db_pwd, db='njrkgy',
                         charset='utf8')
  data = json.loads(request.data)
  material_list = data['data']

  cur = conn.cursor()

  for m in material_list:
    cur.execute(
      "update t_order_detail set price = %s where id = %s" % (m['price'], m['id']))
  conn.commit()
  return "0"

@hg_app.route('/api/<tenant_id>/order/list', methods=['POST'])
def get_order_list(tenant_id):
    request_params = request.json if request.data else {}
    write_log(request.data)
    write_log(request.json)
    request_params = json.loads(request.data)
    request_params['tenant_id'] = tenant_id
    request_params['cur_count'] = request_params['count']
    request_params['cur_page'] = request_params['page']
    ret_content, status = get_orders(request_params)
    ret_content = ret_content.encode()
    return ret_content, status


@hg_app.route('/api/<tenant_id>/order/detail/<order_id>')
def get_order_detail(tenant_id, order_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    request_params['order_id'] = order_id
    if 'GET' in request.method:
        ret_content, status = get_od(request_params)
        ret_content = ret_content.encode()
        return ret_content, status


@hg_app.route('/api/<tenant_id>/order/<order_id>/progress/list')
def get_order_progress_list(tenant_id, order_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    request_params['order_id'] = order_id
    if 'GET' in request.method:
        ret_content, status = qry_order_progress_list(request_params)
        ret_content = ret_content.encode()
        return ret_content, status


@hg_app.route('/api/<tenant_id>/order/progress', methods=['POST'])
def post_progress(tenant_id):
    request_params = request.json if request.data else {}
    request_params['tenant_id'] = tenant_id
    if 'POST' in request.method:
        ret_content, status = add_progress(request_params)
        ret_content = ret_content.encode()
        return ret_content, status

'''
if __name__ == "__main__":
    v_host = '0.0.0.0'
    v_port = 8081
    print 'hg smart product server is started successfuly...'
    hg_app.run(host=v_host, port=v_port, debug=False, threaded=False)
'''

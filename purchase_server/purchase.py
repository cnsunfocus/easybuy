#!/usr/bin/env python
# -*- coding: utf-8 -*-
from flask import Flask, request
import MySQLdb
import datetime
import json

app = Flask(__name__)
import config
import sys

reload(sys)
sys.setdefaultencoding('utf-8')


@app.route('/api/supplier/')
def get_supplier():
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute("select sp_name, code from t_supplier")
  return 'Hello World!'


@app.route('/api/material/supplier/<string:sp_id>')
def get_material(sp_id):
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute("select distinct(prod_name) from t_product "
              "where prod_type='原料' and status = '有效' and sp_id = '%s'" % sp_id)
  results = cur.fetchall()
  ret_data = []
  for r in results:
    data = {}
    data['name'] = r[0]
    ret_data.append(data)
  return json.dumps(ret_data)


@app.route('/api/material/<string:name>/supplier/<string:sp_id>/standard')
def get_standard_list(name, sp_id):
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute("select DISTINCT(prod_gb_standard) from t_product p "
              "where p.prod_type='%s' and p.status = '%s' and p.prod_name = '%s' and sp_id = '%s'"
              % ("原料", "有效", name, sp_id))

  results = cur.fetchall()
  gb_data = []

  for r in results:
    gb_data.append(r[0])

  return json.dumps(gb_data)


@app.route('/api/suppliers')
def get_suppliers():
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute("select id, sp_name, sp_addr, sp_contacter, sp_contacter_phone from t_supplier p "
              "where p.status = '%s' " % ("有效"))

  results = cur.fetchall()
  gb_data = []

  for r in results:
    data = {}
    data['sp_id'] = r[0]
    data['sp_name'] = r[1]
    data['sp_addr'] = r[2]
    data['sp_contact'] = r[3]
    data['sp_phone'] = r[4]
    gb_data.append(data)

  return json.dumps(gb_data)


@app.route('/api/material/<string:name>/standard/<string:standard>/supplier/<string:sp_id>')
def get_units(name, standard, sp_id):
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute(
    "select p.unit, u.desc from t_product p, t_unit u "
    "where p.prod_type='%s' and p.status = '%s' "
    "and p.prod_name = '%s' and prod_gb_standard = '%s' and u.code = p.unit and p.sp_id = '%s'"
    % (u"原料", u"有效", name, standard, sp_id))

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

  return json.dumps(ret_data)


@app.route('/api/order', methods=['POST'])
def add_order():
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  data = json.loads(request.data)
  supplier = data['supplier']
  material_list = data['data']

  cur = conn.cursor()
  cur.execute(
    "insert into t_order_list (order_id, order_date, supplier, sp_addr, sp_contact, sp_phone, sp_fax, sp_email, contact, addr, phone, fax, email) values "
    "('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')" % (
      data['order_id'], data['order_date'], supplier['sp_name'], supplier['sp_addr'], supplier['sp_contact'],
      supplier['sp_phone'], supplier['sp_phone'], supplier['sp_phone'], data['contact'], data['addr'], data['phone'],
      data['fax'], data['email']))

  for m in material_list:
    cur.execute(
      "insert into t_order_detail (order_id, material, price, amount, standard, note, recv_date, unit) VALUES "
      "('%s', '%s', %s, %s, '%s', '%s', '%s', '%s')" % (
        data['order_id'], m['name'], m['price'], m['amount'], m['type'], m['note'], m['date'], m['unit']['desc']))

  conn.commit()
  return "0"


@app.route('/api/order/list', methods=['POST'])
def get_order_list():
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute(
    "select o.id, o.order_id, o.supplier, o.sp_contact, o.sp_phone, o.status, d.material as name, "
    "sum(d.price * d.amount)  as totalPrice, o.order_date "
    "from t_order_list o, t_order_detail d where o.order_id = d.order_id group by d.order_id")

  results = cur.fetchall()
  ret_data = []
  for r in results:
    data = {}
    data['id'] = r[0]
    data['order_id'] = r[1]
    data['supplier'] = r[2]
    data['sp_contact'] = r[3]
    data['sp_phone'] = r[4]
    data['status'] = r[5]
    data['name'] = r[6]
    data['totalPrice'] = float(r[7])
    data['order_date'] = r[8].strftime('%Y-%m-%d')
    ret_data.append(data)
  return json.dumps(ret_data)


@app.route('/api/order/detail/<string:order_id>')
def get_order_detail(order_id):
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute("select id, order_id, order_date, status, supplier, sp_addr, sp_contact, sp_phone, sp_fax, sp_email, "
              " contact, addr, phone, fax, email from t_order_list where order_id = '%s'" % order_id)
  results = cur.fetchall()
  ret = {}
  ret['order_id'] = results[0][1]
  ret['order_date'] = results[0][2].strftime('%Y-%m-%d')
  ret['status'] = results[0][3]
  ret['supplier'] = {}
  ret['supplier']['name'] = results[0][4]
  ret['supplier']['addr'] = results[0][5]
  ret['supplier']['contact'] = results[0][6]
  ret['supplier']['phone'] = results[0][7]
  ret['supplier']['fax'] = results[0][8]
  ret['supplier']['mail'] = results[0][9]

  ret['buyer'] = {}
  ret['buyer']['contact'] = results[0][10]
  ret['buyer']['addr'] = results[0][11]
  ret['buyer']['phone'] = results[0][12]
  ret['buyer']['fax'] = results[0][13]
  ret['buyer']['mail'] = results[0][14]

  cur.execute(
    "select  d.id, d.order_id,  d.material, d.amount, d.price, d.standard, d.note, d.recv_date, d.unit "
    "from  t_order_detail d  where d.order_id = '%s'" % order_id)

  results = cur.fetchall()
  ret_data = []
  for r in results:
    data = {}
    data['id'] = r[0]
    data['order_id'] = r[1]
    data['name'] = r[2]
    data['amount'] = r[3]
    data['price'] = float(r[4])
    data['standard'] = r[5]
    data['note'] = r[6]
    data['date'] = r[7].strftime('%Y-%m-%d')
    data['unit'] = r[8]
    ret_data.append(data)
  ret['order_detail'] = ret_data
  return json.dumps(ret)


@app.route('/api/order/<string:order_id>/progress/list', methods=['GET'])
def get_order_progress_list(order_id):
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute(
    "select o.id, o.order_id, o.op_date, o.operator, o.note, o.new_status, o.status "
    "from t_order_progress o "
    "where o.order_id = '%s' order by o.op_date desc " % order_id)

  results = cur.fetchall()
  ret_data = []
  for r in results:
    data = {}
    data['id'] = r[0]
    data['order_id'] = r[1]
    data['op_date'] = r[2].strftime('%Y-%m-%d %H:%M:%S')
    data['operator'] = r[3]
    data['note'] = r[4]
    data['new_status'] = r[5]
    data['status'] = r[6]
    ret_data.append(data)

  cur.execute("select status from t_order_list where order_id = '%s'" % order_id)
  ret = cur.fetchone()
  result = {}
  result['progress'] = ret_data
  result['status'] = ret[0]
  result['order_id'] = order_id

  return json.dumps(result)


@app.route('/api/order/progress', methods=['POST'])
def add_progress():
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  data = json.loads(request.data)
  order_id = data['order_id']
  op_date = datetime.datetime.strptime(data['op_date'], '%Y-%m-%d %H:%M:%S')
  operator = data['operator']
  note = data['note']
  new_status = data['new_status']
  status = data['status']
  cur = conn.cursor()
  cur.execute(
    "insert into t_order_progress (order_id, op_date, operator, note, new_status, status) "
    "values ('%s','%s','%s','%s',%s, %s) " % (order_id, op_date, operator, note, new_status, status))
  cur.execute("update t_order_list set status = %s where order_id = '%s'" % (new_status, order_id))
  conn.commit()
  return "0"


if __name__ == '__main__':
  app.run(port=8089)

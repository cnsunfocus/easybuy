#!/usr/bin/env python
# -*- coding: utf-8 -*-
from flask import Flask
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


@app.route('/api/purchase_order/list')
def get_purchase_order():
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute("select sp_name, code from t_supplier")
  results = cur.fetchall()
  ret_data = []
  for r in results:
    data = {}
    data['sp_name'] = r[0]
    data['sp_code'] = r[1]
    ret_data.append(data)
  return json.dumps(ret_data)


@app.route('/api/trade/list')
def get_trade_list():
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute("select sp_name, code from t_supplier")

  results = cur.fetchall()
  ret_data = []
  for r in results:
    data = {}
    data['sp_name'] = r[0]
    data['sp_code'] = r[1]
    ret_data.append(data)
  return json.dumps(ret_data)


if __name__ == '__main__':
  app.run(port=8089)

#!/usr/bin/env python
# -*- coding: utf-8 -*-
from flask import Flask
import MySQLdb
import datetime
import json

app = Flask(__name__)
import config


@app.route('/api/supplier/')
def get_supplier():
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute("select sp_name, code from t_supplier")
  return 'Hello World!'


@app.route('/api/material')
def get_material():
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute('select distinct(prod_name) from t_product where prod_type="原料" and status = "有效"')
  results = cur.fetchall()
  ret_data = []
  for r in results:
    data = {}
    data['name'] = r[0]
    ret_data.append(data)
  return json.dumps(ret_data)

@app.route('/api/material/<string:name>/list')
def get_material_detail(name):
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute('select prod_gb_standard, sp_name, sp_id, unit from t_product, t_supplier'
              ' where t_supplier.id = t_product.sp_id and prod_type="原料" and status = "有效" and name = "%s"' % name)
  results = cur.fetchall()
  ret_data = {}
  gb_data = []
  sp_data = []
  unit_data = []


  for r in results:
    gb_data.append(r[0])
    sp_data.append({"sp_name":r[1], "sp_id":r[2]})
    unit_data.append(r[3])

  ret_data["gb"] = gb_data
  ret_data["sp"] = sp_data
  ret_data["unit"] = unit_data

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

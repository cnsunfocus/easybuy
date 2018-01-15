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


@app.route('/api/material/list')
def get_material():
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute('select distinct(prod_name), code from t_product where prod_type="原料" and status = "有效"')
  results = cur.fetchall()
  ret_data = []
  for r in results:
    data = {}
    data['name'] = r[0]
    data['code'] = r[1]
    ret_data.append(data)
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

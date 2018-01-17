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


@app.route('/api/material/<string:name>/standard')
def get_standard_list(name):
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute("select DISTINCT(prod_gb_standard) from t_product p "
              "where and p.prod_type='%s' and p.status = '%s' and p.prod_name = '%s'"
              % (u"原料", u"有效", name))

  results = cur.fetchall()
  gb_data = []

  for r in results:
    gb_data.append(r[0])

  return json.dumps(gb_data)


@app.route('/api/material/<string:name>/standard/<string:standard>')
def get_supplier_list(name, standard):
  conn = MySQLdb.connect(host=config.db_server, user=config.db_user, passwd=config.db_passwd, db=config.db_name,
                         charset=config.db_charset)
  cur = conn.cursor()
  cur.execute(
    "select s.sp_name, sp_id, p.unit, u.desc from t_product p, t_supplier s, t_unit u "
    "where s.id = p.sp_id and p.prod_type='%s' and p.status = '%s' "
    "and p.prod_name = '%s' and prod_gb_standard = '%s' and u.code = p.unit"
    % (u"原料", u"有效", name, standard))

  results = cur.fetchall()
  ret_data = {}
  sp_data = []
  unit_data = []

  for r in results:
    sp_data.append({"sp_name": r[1], "sp_id": r[2]})
    unit_data.append({"code": r[3], "desc": r[4]})

  tmp = {}
  sp_final_data = []
  for sp in sp_data:
    if tmp.has_key(sp['sp_id']):
      continue
    tmp[sp['sp_id']] = sp['sp_name']
    sp_final_data.append(sp)

  tmp = {}
  unit_final_data = []
  for sp in unit_data:
    if tmp.has_key(sp['code']):
      continue
    tmp[sp['code']] = sp['desc']
    unit_final_data.append(sp)

  ret_data["sp"] = sp_final_data
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

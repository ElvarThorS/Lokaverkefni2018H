#Elvar Þór Sævarsson
#Lokaverkefni
#19.11.2018

import pymysql
from bottle import *

@get('/')
def index():
    #u = request.forms.get('user')
    #p = request.forms.get('pass')
    #n = request.forms.get('nafn')

    #conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1106012980', passwd='mypassword', db='1106012980_vef2_lokaverkefni')
    #c = conn.cursor()
    #c.execute("SELECT user FROM 1106012980_vef2_lokaverkefni.users")
    #result = c.fetchall() 
    #c.close()
    return template('index')

@route('/innskra')
def index():
    return template('innskra')

@route('/nyskra')
def index():
    return template('nyskra')


@route('/donyskra', method='POST')
def nyr():
    u = request.forms.get('user')
    p = request.forms.get('pass')
    n = request.forms.get('nafn')


    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1106012980', passwd='mypassword', db='1106012980_vef2_lokaverkefni')
    cur = conn.cursor()

    cur.execute("SELECT count(*) FROM 1106012980_vef2_lokaverkefni.users where user=%s",(u))
    result = cur.fetchone()

    if result[0] == 0:
        cur.execute("INSERT INTO 1106012980_vef2_lokaverkefni.users Values(%s,%s,%s)", (u, p))
        conn.commit()
        cur.close()
        conn.close()
        return u, " hefur verið skráður <br><a href='/'>Heim</a>"
    else:
        return u, " er frátekið notendanafn, reyndu aftur <br><a href='/#ny'>Nýskrá</a>"

@route('/doinnskra', method='POST')
def doinn():
    u = request.forms.get('user')
    p = request.forms.get('pass')
    

    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1106012980', passwd='mypassword', db='1106012980_vef2_lokaverkefni')
    cur = conn.cursor()

    cur.execute("SELECT count(*) FROM 1106012980_vef2_lokaverkefni.users where user=%s and pass=%s",(u,p))
    result = cur.fetchone()
    print(result)

    if result[0] == 1:

        cur.close()
        conn.close()
        return template('leyni',u=u)
    else:
        return template('ekkileyni')


@route('/members')
def member():
    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1106012980', passwd='mypassword', db='1106012980_vef2_lokaverkefni')
    c = conn.cursor()
    c.execute("SELECT user FROM 1106012980_vef2_lokaverkefni.users")
    result = c.fetchall() 
    c.close()
    output = template('members', rows=result)
    return output

@route('/blogg')
def blogg():
    return template('bloggpost')

@route('/static/<skra>')
def static_skrar(skra):
    return static_file(skra, root="/static/")

try:
  run(host='0.0.0.0', port=os.environ.get('PORT'), app=app)

except:
  run(debug=True)
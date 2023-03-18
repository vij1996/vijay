from flask import Flask, render_template, request, url_for, redirect
import mysql.connector
con = mysql.connector.connect(user="root", database="vijayfilpcart")

app = Flask(__name__)

@app.route("/order")
def order():
    cur = con.cursor()
    cur.execute("select * from order2")
    result = cur.fetchall()
    cur.close()
    return render_template("order.html", data=result)


@app.route("/All")
def All():
    cur = con.cursor()
    cur.execute("select * from filpcart")
    result = cur.fetchall()
    cur.close()
    return render_template("All.html", data=result)

@app.route("/")
def mobile():
    cur = con.cursor() 
    cur.execute("select * from filpcart where salestype='Mobile'")
    result = cur.fetchall()
    cur.close()
    return render_template("mobile.html", data=result)

@app.route("/electric")
def electric():
    cur = con.cursor()
    cur.execute(" select * from filpcart where salestype='electric'")
    result = cur.fetchall()
    cur.close()
    return render_template("electric.html", data=result)

@app.route("/fashaion")
def fashaion():
    cur = con.cursor()
    cur.execute(" select * from filpcart where salestype='fashaion'")
    result = cur.fetchall()
    cur.close()
    return render_template("fashaion.html", data=result)

@app.route("/toys")
def toys():
    cur = con.cursor()
    cur.execute(" select * from filpcart where salestype='toys'")
    result = cur.fetchall()
    cur.close()
    return render_template("toys.html", data=result)

@app.route("/fishingnet")
def fishingnet():
    cur = con.cursor()
    cur.execute(" select * from filpcart where salestype='fishingnet'")
    result = cur.fetchall()
    cur.close()
    return render_template("fishingnet.html", data=result)

@app.route("/newentry")
def newentry():
    cur = con.cursor()
    cur.execute(" select * from filpcart")
    result = cur.fetchall()
    cur.close()
    return render_template("newentry.html", data=result)

@app.route("/ordertwo")
def ordertwo():
    cur = con.cursor()
    cur.execute(" select * from order2")
    result = cur.fetchall()
    cur.close()
    return render_template("ordertwo.html", data=result)

@app.route("/search",  methods=["POST","GET"])
def search():
    if request.method == "POST":
        c=request.form["salesname"]

    cur = con.cursor()
    cur.execute(" select * from filpcart where salesname like '"+c+"%'")
    result = cur.fetchall()
    cur.close()
    return render_template("search.html", data=result)




@app.route("/salesentry")
def salesentry():
    return render_template("salesentry.html")

@app.route("/salessave", methods=["POST","GET"])
def salessave():
    if request.method == "POST":
        a=request.form["salesid"]
        b=request.form["salesphoto"]
        c=request.form["salesname"]
        d=request.form["salesammout"]
        e=request.form["salespecation"]
        f=request.form["salestype"]
        cur=con.cursor()
        cur.execute("insert into filpcart values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')")
        con.commit()
        cur.close()
        return redirect(url_for("newentry"))

@app.route("/salesdelete", methods=["POST","GET"])
def salesdelete():
        cid=request.args.get("cid")
        cur=con.cursor()
        cur.execute("delete from filpcart where salesid='"+cid+"'")
        con.commit()
        cur.close()
        return redirect(url_for("newentry"))


@app.route("/salesedit", methods=["POST","GET"])
def salesedit():
    cid=request.args.get("cid")
    cur= con.cursor()
    cur.execute("select * from filpcart where salesid='"+cid+"'")
    result=cur.fetchall()
    cur.close()
    return render_template("salesedit.html", data=result)

@app.route("/salesupdate", methods=["POST" ,"GET"])
def salesupdate():
    if request.method == "POST":
        a=request.form["salesid"]
        b=request.form["salesphoto"]
        c=request.form["salesname"]
        d=request.form["salesammout"]
        e=request.form["salespecation"]
        f=request.form["salestype"]
        cur=con.cursor()
        cur.execute("update filpcart set salesphoto='"+b+"', salesname='"+c+"',salesammout='"+d+"', "
        "salespecation='"+e+"',salestype='"+f+"' where salesid='"+a+"'")
        con.commit()
        cur.close()
        return redirect(url_for("newentry"))



@app.route("/customersave", methods=["POST","GET"])
def customersave():
    if request.method == "POST":
        a=request.form["order_Number"]
        b=request.form["customer_Name"]
        c=request.form["customer_phone_no"]
        d=request.form["customer_Gmail"]
        e=request.form["customer_Adderss"]
        f=request.form["product_name"]
        g=request.form["product_Qty"]
        h=request.form["Ammount"]
        cur=con.cursor()
        cur.execute("insert into order2 values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"')")
        con.commit()
        cur.close()
        return redirect(url_for("ordertwo"))

if (__name__ =="__main__"):
    app.run()



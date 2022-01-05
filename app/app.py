#Flaskとrender_template（HTMLを表示させるための関数）をインポート
from flask import Flask,render_template,request
import sqldb as db
import setting as s
#Flaskオブジェクトの生成
app = Flask(__name__)

#「/」へアクセスがあった場合に、"Hello World"の文字列を返す
@app.route("/")
def hello():
    data = db.get_iot_data()
    room = s.room_number
    d_type = s.device_type
    return render_template("index.html",data=data,room=room,d_type=d_type)


#「/index」へアクセスがあった場合に、「index.html」を返す
@app.route("/login")
def index():
    return render_template("login.html")


#おまじない
if __name__ == "__main__":
    app.run(debug=True)
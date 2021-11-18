#Flaskとrender_template（HTMLを表示させるための関数）をインポート
from flask import Flask,render_template

#Flaskオブジェクトの生成
app = Flask(__name__)


#「/」へアクセスがあった場合に、"Hello World"の文字列を返す
@app.route("/")
def hello():
    return render_template("index.html")


#「/index」へアクセスがあった場合に、「index.html」を返す
@app.route("/login")
def index():
    return render_template("login.html")


#おまじない
if __name__ == "__main__":
    app.run(debug=True)
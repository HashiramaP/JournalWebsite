from flask import Flask, render_template, request, redirect, url_for, session, jsonify

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("homepage.html")

app.route("/sigup", methods=['POST'])
def signup():
    print("hi")

if __name__=="__main__":
    app.run()
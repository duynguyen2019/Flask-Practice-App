from flask import Flask 
from flask import render_template

app = Flask(__name__)

@app.route("/datascience/")
def map():
    return render_template('map.html')


@app.route("/datascience/maps")
def map2():
    return render_template('map2.html')
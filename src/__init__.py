from flask import Flask
from flask_talisman import Talisman

app = Flask(__name__)
talisman = Talisman(app)

@app.route("/")
def index():
    return "Hello, secure world!"

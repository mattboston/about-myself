from distutils.log import debug
from flask import Flask, render_template
import os
import json

app = Flask(__name__, template_folder='./templates', static_folder='./static')

with open('/app/config/config.json') as f:
    config = json.load(f)

@app.route('/')
def index():
    return render_template('index.html', config=config)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=False)
    # app.run(host='0.0.0.0', port=8000, debug=False)
    # app.run(host='0.0.0.0', debug=False)

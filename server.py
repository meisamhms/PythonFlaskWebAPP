from flask import Flask
from flask import request
import datetime
import socket
import flask

app = Flask(__name__)
app.config['JSON_SORT_KEYS'] = False

timestamp = datetime.datetime.now()
hostname = socket.gethostname()


@app.route('/')
def index():
    return {
        "timestamp": timestamp,
        "hostname": hostname,
        "engine": flask.__version__,
        "visitor ip": request.remote_addr,
    }


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
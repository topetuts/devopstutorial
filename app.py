from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "hello chris this is new version"

@app.route('/2')
def secondroute():
    return "hello 2"


if __name__ == '__main__':
    app.run(threaded=True, port=5000)
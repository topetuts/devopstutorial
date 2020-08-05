from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "hello chris"

@app.route('/2')
def hello_world():
    return "hello 2"


if __name__ == '__main__':
    app.run(threaded=True, port=5000)
# main.py for Flask
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello, Dockerized Python Web App!'

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)  # Listen on all interfaces
     
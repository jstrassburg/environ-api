from flask import Flask
import os
import json

app = Flask(__name__)

@app.route('/')
def index():
    return json.dumps(os.environ, default=lambda o: o.__dict__, sort_keys=True, indent=2)

if __name__ == '__main__':
    app.run(debug=True)

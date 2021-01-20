#!usr/bin/env python
from flask import Flask
import socket 

app = Flask('myapp')

@app.route('/')
def hello():
    return f"""
             Hello...
             Response from Hostname: {socket.gethostname()}
            """, 200

app.run(host = '0.0.0.0', port = 80)
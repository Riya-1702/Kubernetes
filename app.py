from flask import Flask 
import socket
app=Flask(__name__)
@app.route("/home")
def home():
    hostname=socket.gethostname()
    IP=socket.gethostbyname(hostname)
    return f"hostname: {hostname}, IP: {IP}"
app.run(host="0.0.0.0",port=5000)

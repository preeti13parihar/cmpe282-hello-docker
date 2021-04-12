from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/<msg>")
def sayHello(msg):
    return jsonify({"msg": f"{msg}"}), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001, debug=True)


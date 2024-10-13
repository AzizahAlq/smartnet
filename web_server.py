from flask import Flask, jsonify
app = Flask(__name__)

# In-memory storage of router metrics (for demo purposes)
router_data = {}

# Simulate fetching data from DDS (in a real setup, this would be received via DDS subscriber)
def retrieve_dds_data():
    return router_data

@app.route('/data', methods=['GET'])
def get_data():
    data = retrieve_dds_data()  # Simulate DDS subscriber data
    return jsonify(data)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)

from flask import Flask, jsonify
from flask_cors import CORS  # Import CORS

app = Flask(__name__)
CORS(app)  # Enable CORS globally

@app.route("/get_nutrition/<ingredient>", methods=["GET"])
def get_nutrition(ingredient):
    data = {
        "ingredient": ingredient,
        "nutrition": {"calories": 387, "carbs": 100, "fat": 0, "protein": 0},
        "status": "success",
    }
    return jsonify(data)

if __name__ == "__main__":
    app.run(port=5001, debug=True)

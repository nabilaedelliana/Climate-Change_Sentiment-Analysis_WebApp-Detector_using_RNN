from flask import Flask, request, jsonify
import pickle
import pandas as pd
import numpy as np
from tensorflow import keras

app = Flask(__name__)

# initiate model & columns
LABEL = ["Netral", "Pro", "Contra"]

model = keras.models.load_model('sentiment_model')

@app.route("/")
def welcome():
    return '<h3>Selamat Datang di Program Backend Saya<h3>'

@app.route("/predict", methods=["GET", "POST"])
def predict_churn():
    if request.method == "POST":
        content = request.json
        try:
            new_data = {'message': content['message']}
            new_data = pd.DataFrame([new_data])
            res = model.predict(new_data).argmax(axis=1)
            result = {'class':int(res[0]),
                      'class_name':LABEL[int(res[0])]}
            response = jsonify(success=True, result = result)
            return response, 200
        except Exception as e:
            response2 = jsonify(success=False, message=str(e))
            return response2, 400
    
    return "<p>Silahkan gunakan method POST untuk mode <em>inference model </em></p>"
#app.run(debug=True) # harus dihapus kalo mau deploy ke heroku
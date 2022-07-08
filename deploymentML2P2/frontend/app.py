import streamlit as st
import requests
from PIL import Image

st.set_page_config(
    page_title="Climate Change Sentiment Detector",
    page_icon="🌍",
    layout="centered",
    menu_items={
        'Get Help': 'https://www.github.com/nabilaedelliana',
        'Report a bug': "https://www.extremelycoolapp.com/bug",
        'About': "# This web apps is developed by Nabila Edelliana Khairunnisa"
    }
)

st.markdown("<h1 style='text-align: center; color: black;'>Climate Change Sentiment Detector</h1>", unsafe_allow_html=True)
st.markdown("<h4 style='text-align: center; color: black;'>This is a free online apps to detect sentiment towards climate change that caused by human made</h4>", unsafe_allow_html=True)

image = Image.open("wordcloudClimateChange.png")
#col1, col2, col3 = st.columns(3)
#with col1:
#    st.write(' ')
#with col2:
#    st.image(image, use_column_width='always')
#with col3:
#    st.write(' ')
st.image(image, use_column_width='always')    

st.markdown("Predicting sentiment towards man-made climate change topic can help everyone like scientist, governon, and social influencer in making decision when dealing with climate change.")
st.markdown("This apps is developed with the stucture of RNN deep learning with accuracy up to 98%.")
    
# Placement
st.subheader('Message')
st.markdown('input message to predict the sentiment towards man made-climate change here')
message = st.text_input(max_chars=280, label = 'ex : RT @edell Its freezing outside, where the hell is global warming??')

# inference
data = {'message':message}

URL = "https://climate-change-sentiment-be-ed.herokuapp.com/predict"

# komunikasi
prediction = st.button('Detect Sentiment')
if prediction :
    r = requests.post(URL, json=data)
    res = r.json()

    if r.status_code == 200:
        st.markdown(res['result']['class_name'])

    elif r.status_code == 400:
        st.write("There is an Error")
        st.write(res['message'])
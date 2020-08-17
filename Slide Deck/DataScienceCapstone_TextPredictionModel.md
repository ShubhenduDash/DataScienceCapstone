Text Prediction Model
========================================================
author: Shubhendu Dash
date: 2020-08-17
autosize: true

The Project
========================================================

This project involves Natural Language Processing.
This application takes a word(s) as user input and predicts the next possible word as its output. 

*Project deliverables:*  

- Text Prediction Model - An Application based concept.
- Text Prediction Model App - Deployed in shinyapps.io
- Text Prediction Model App - Slide Deck published in R Pubs.

Text Prediction Model
========================================================

The text prediction model uses the principles of "tidy data" applied to text mining in R. Key model steps: 

1. Input: raw text files for model training
2. Clean training data; separate into 2 word, 3 word, and 4 word n-grams, save as tibbles
3. Sort n-grams tibbles by frequency, save as repos
4. N-grams function: uses a "back-off" type prediction model
  - user supplies an input phrase
  - model uses last 3, 2, or 1 words to predict the best 4th, 3rd, or 2nd match in the repos
5. Output: next word prediction

Benefits: easy to read code; uses "pipes"; fast processing of training data; able to sample up to 25% of original corpus; relatively small output repos

Text Prediction App
========================================================

The text prediction app provides a simple user interface to predict the next possible word.  

*Key Features:*  

1. Text box for user input.  
2. Predicted next word outputs dynamically below user input.  
3. Tabs with plots of most frequent n-grams in the dataset.  
4. Side panel with user instructions.  

*Key Benefits:*  

1. Fast response.    
2. Method allows for large training sets leading to better next word predictions.  

[Shiny App Link](https://shubhendudash.shinyapps.io/DataScienceCapstone_TextPredictionModel/)  

Documentation and Source Code
========================================================

Tidy Data  
"http://vita.had.co.nz/papers/tidy-data.html"

Text Mining with R: A Tidy Approach  
"http://tidytextmining.com/index.html"

Shiny App    
"https://shubhendudash.shinyapps.io/DataScienceCapstone_TextPredictionModel/"

Shiny App Source Code repository on Github    
"https://github.com/ShubhenduDash/DataScienceCapstone/ngram_match"

Data Specialization Capstone repository on Github    
"https://github.com/ShubhenduDash/DataScienceCapstone"


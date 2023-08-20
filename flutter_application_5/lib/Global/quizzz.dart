import 'package:flutter/material.dart';

////  Global variable  ////
List <Map<String,dynamic>> datalist = [
{
  "category name": "Sports Test",
  "color": Colors.blue,
  "data": [
    {
    "question": "How many Player in football team?",
    "answers":[
        {"ans":"9","score":"0"},
        {"ans":"10","score":"0"},
        {"ans":"11","score":"1"},
        {"ans":"12","score":"0"},
    ]
    },
    {
      "question":"Which country hosted the 2018 FIFA World Cup?",
      "answers":[
        {"ans":"Russia","score":"1"},
        {"ans":"South Africa","score":"0"},
        {"ans":"Brazil","score":"0"},
        {"ans":"Qatar","score":"0"},

      ]
    },
    {
      "question":"Which player has scored the most goals in the history of the UEFA Champions League?",
      "answers":[
        {"ans":"Lionel Messi","score":"0"},
        {"ans":"Robert Lewandowski","score":"0"},
        {"ans":"Karim Benzema","score":"0"},
        {"ans":"Cristiano Ronaldo","score":"1"},
      ]
    }
  ]
},
{
  "category name":"General Test",
  "color":Color.fromARGB(255, 248, 129, 168),
  "data":[
    {
      "question":"What is the capital city of Australia?",
      "answers":[
        {"ans":"Cairo","score":"0"},
        {"ans":"Canberra","score":"1"},
        {"ans":"Brasília","score":"0"},
        {"ans":"Dakar","score":"0"},
      ],
    },
    {
      "question":"What is the largest ocean in the world?",
      "answers":[
        {"ans":"The Atlantic Ocean","score":"0"},
        {"ans":"The Indian Ocean","score":"0"},
        {"ans":"the Southern Ocean","score":"0"},
        {"ans":"The Pacific Ocean","score":"1"},
      ],
    },
    {
      "question":"What is the largest organ in the human body?",
      "answers":[
        {"ans":"The Stomach","score":"0"},
        {"ans":"The Pancreas","score":"0"},
        {"ans":"The Skin","score":"1"},
        {"ans":"The lungs","score":"0"},
      ]
    }
  ]

},
{
   "category name":"History Test",
  "color":Colors.green,
  "data":[
    {
      "question":"In what year did World War I begin?",
      "answers":[
        {"ans":"1914","score":"1"},
        {"ans":"1917","score":"0"},
        {"ans":"1920","score":"0"},
        {"ans":"1910","score":"0"},
      ],
    },
    {
      "question":"Who was the leader of the Nazi Party in Germany during World War II?",
      "answers":[
        {"ans":"Heinrich Himmler","score":"0"},
        {"ans":"Adolf Hitler","score":"1"},
        {"ans":"Joseph Goebbels","score":"0"},
        {"ans":"Hermann Goering","score":"0"},
      ],
    },
    {
      "question":"Who was the first President of the United States?",
      "answers":[
        {"ans":"Thomas Jefferson","score":"0"},
        {"ans":"James Madison","score":"0"},
        {"ans":"George Washington","score":"1"},
        {"ans":"John Adams","score":"0"},
      ]
    }
  ]
},
{
   "category name":"IQ Test",
  "color":Color.fromARGB(255, 252, 121, 112),
  "data":[
    {
      "question":"If a plane travels at 500 miles per hour and it takes 2 hours to reach its destination, how far did it travel?",
      "answers":[
       {"ans": "1000 miles", "score": "1"},
        {"ans": "250 miles", "score": "0"},
        {"ans": "750 miles", "score": "0"},
        {"ans": "1500 miles", "score": "0"},
      ],
    },
    {
      "question": "Which number comes next in the sequence: 2, 4, 8, 16, __?",
      "answers": [
        {"ans": "24", "score": "0"},
        {"ans": "32", "score": "1"},
        {"ans": "20", "score": "0"},
        {"ans": "40", "score": "0"}
      ]
    },
    {
      "question": "If you rearrange the letters 'RAPIS,' you would get the name of which country?",
      "answers": [
        {"ans": "Spain", "score": "0"},
        {"ans": "Russia", "score": "0"},
        {"ans": "Paris", "score": "0"},
        {"ans": "Paris", "score": "1"}
      ]
    }
  ]
},
{
   "category name":"Math Test",
  "color":Colors.orange,
  "data":[
    {
      "question": "What is the result of 8 divided by 2?",
      "answers": [
        {"ans": "4", "score": "1"},
        {"ans": "6", "score": "0"},
        {"ans": "10", "score": "0"},
        {"ans": "2", "score": "0"}
      ]
    },
    {
      "question": "If a rectangle has a length of 10 units and a width of 5 units, what is its area?",
      "answers": [
        {"ans": "50 square units", "score": "1"},
        {"ans": "30 square units", "score": "0"},
        {"ans": "15 square units", "score": "0"},
        {"ans": "25 square units", "score": "0"},
      ]
    },
    {
      "question": "What is the result of 3^4?",
      "answers": [
        {"ans": "9", "score": "0"},
        {"ans": "81", "score": "1"},
        {"ans": "12", "score": "0"},
        {"ans": "64", "score": "0"},
      ]
    }
  ]
},
{
   "category name":"Food Test",
  "color":Color.fromARGB(255, 238, 141, 255),
  "data":[
   {
      "question": "Which Italian pasta is shaped like small rice grains?",
      "answers": [
        {"ans": "Fettuccine", "score": "0"},
        {"ans": "Orzo", "score": "1"},
        {"ans": "Rigatoni", "score": "0"},
        {"ans": "Linguine", "score": "0"}
      ]
    },
    {
      "question": "What is the main ingredient in guacamole?",
      "answers": [
        {"ans": "Tomatoes", "score": "0"},
        {"ans": "Onions", "score": "0"},
        {"ans": "Avocado", "score": "1"},
        {"ans": "Lettuce", "score": "0"}
      ]
    },
    {
      "question": "Which fruit is known as the 'king of fruits' and has a strong, distinctive smell?",
      "answers": [
        {"ans": "Mango", "score": "1"},
        {"ans": "Banana", "score": "0"},
        {"ans": "Apple", "score": "0"},
        {"ans": "Orange", "score": "0"}
      ]
    }
  ]
},
];
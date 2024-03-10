class Question {
  final int id, answer;
  final String question;
  late final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List Sample_data = [
  {
    "id": 1,
    "question": "What is the chemical symbol for gold?",
    "option": ["Au", "Ag", "Fe", "Cu"],
    "answer_index": 0
  },
  {
    "id": 2,
    "question":
        "In computer programming, what does the acronym 'HTML' stand for?",
    "option": [
      "HyperText Markup Language",
      "High-Level Programming Language",
      "Hyperlink and Text Management Language",
      "Home Tool Markup Language"
    ],
    "answer_index": 0
  },
  {
    "id": 3,
    "question": "Which logic gate performs the operation of addition?",
    "option": ["AND", "OR", "XOR", "ADD"],
    "answer_index": 2
  },
  {
    "id": 4,
    "question": "Who is known as the 'Father of Modern Physics'?",
    "option": [
      "Albert Einstein",
      "Isaac Newton",
      "Niels Bohr",
      "Galileo Galilei"
    ],
    "answer_index": 0
  },
  {
    "id": 5,
    "question": "Which planet is known as the 'Red Planet'?",
    "option": ["Venus", "Mars", "Jupiter", "Saturn"],
    "answer_index": 1
  },
  {
    "id": 6,
    "question":
        "What programming language is often used for artificial intelligence and machine learning?",
    "option": ["Java", "Python", "C++", "Ruby"],
    "answer_index": 1
  },
  {
    "id": 7,
    "question": "Which element has the chemical symbol 'O'?",
    "option": ["Oxygen", "Osmium", "Oganesson", "Osmium"],
    "answer_index": 0
  },
  {
    "id": 8,
    "question": "What is the largest planet in our solar system?",
    "option": ["Earth", "Jupiter", "Saturn", "Mars"],
    "answer_index": 1
  },
  {
    "id": 9,
    "question": "In binary code, what does '1010' represent?",
    "option": ["Ten", "Eight", "Twelve", "Four"],
    "answer_index": 2
  },
  {
    "id": 10,
    "question": "Who developed the theory of relativity?",
    "option": [
      "Isaac Newton",
      "Albert Einstein",
      "Galileo Galilei",
      "Stephen Hawking"
    ],
    "answer_index": 1
  },
  {
    "id": 11,
    "question": "What is the powerhouse of the cell?",
    "option": ["Mitochondria", "Nucleus", "Endoplasmic Reticulum", "Ribosome"],
    "answer_index": 0
  },
  {
    "id": 12,
    "question":
        "Which programming language is commonly used for web development?",
    "option": ["Java", "Python", "JavaScript", "C#"],
    "answer_index": 2
  },
  {
    "id": 13,
    "question": "What is the capital of Japan?",
    "option": ["Seoul", "Beijing", "Tokyo", "Bangkok"],
    "answer_index": 2
  },
  {
    "id": 14,
    "question": "Which planet is known as the 'Blue Planet'?",
    "option": ["Mars", "Earth", "Neptune", "Uranus"],
    "answer_index": 1
  },
  {
    "id": 15,
    "question": "What is the largest mammal in the world?",
    "option": ["Elephant", "Blue Whale", "Giraffe", "Hippopotamus"],
    "answer_index": 1
  },
  {
    "id": 16,
    "question": "What is the square root of 144?",
    "option": ["10", "12", "14", "16"],
    "answer_index": 1
  },
  {
    "id": 17,
    "question": "Which gas makes up the majority of Earth's atmosphere?",
    "option": ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"],
    "answer_index": 2
  },
  {
    "id": 18,
    "question": "Who is the inventor of the World Wide Web (WWW)?",
    "option": [
      "Tim Berners-Lee",
      "Mark Zuckerberg",
      "Bill Gates",
      "Steve Jobs"
    ],
    "answer_index": 0
  },
  {
    "id": 19,
    "question": "What is the chemical symbol for water?",
    "option": ["H2O", "CO2", "O2", "NaCl"],
    "answer_index": 0
  },
  {
    "id": 20,
    "question":
        "Which famous scientist developed the laws of motion and universal gravitation?",
    "option": [
      "Isaac Newton",
      "Albert Einstein",
      "Galileo Galilei",
      "Nikola Tesla"
    ],
    "answer_index": 0
  },
  {
    "id": 21,
    "question": "In computing, what does the acronym 'CPU' stand for?",
    "option": [
      "Central Processing Unit",
      "Computer Programming Unit",
      "Central Program Unit",
      "Central Peripheral Unit"
    ],
    "answer_index": 0
  },
  {
    "id": 22,
    "question": "What is the largest ocean on Earth?",
    "option": [
      "Atlantic Ocean",
      "Indian Ocean",
      "Arctic Ocean",
      "Pacific Ocean"
    ],
    "answer_index": 3
  },
  {
    "id": 23,
    "question": "What is the speed of light in a vacuum?",
    "option": [
      "299,792 kilometers per second",
      "150,000 kilometers per second",
      "500,000 kilometers per second",
      "100,000 kilometers per second"
    ],
    "answer_index": 0
  },
  {
    "id": 24,
    "question":
        "Which programming language is often used for data analysis and statistical modeling?",
    "option": ["Java", "Python", "C++", "R"],
    "answer_index": 3
  },
  {
    "id": 25,
    "question": "What is the capital of France?",
    "option": ["Berlin", "Rome", "Madrid", "Paris"],
    "answer_index": 3
  },
  {
    "id": 26,
    "question": "What is the smallest prime number?",
    "option": ["0", "1", "2", "3"],
    "answer_index": 2
  },
  {
    "id": 27,
    "question": "Which gas is responsible for the greenhouse effect on Earth?",
    "option": ["Oxygen", "Carbon Dioxide", "Nitrogen", "Methane"],
    "answer_index": 1
  },
  {
    "id": 28,
    "question": "Who is the co-founder of Microsoft Corporation?",
    "option": ["Bill Gates", "Steve Jobs", "Mark Zuckerberg", "Jeff Bezos"],
    "answer_index": 0
  },
  {
    "id": 29,
    "question": "What is the chemical symbol for iron?",
    "option": ["I", "Fe", "Ir", "In"],
    "answer_index": 1
  },
  {
    "id": 30,
    "question":
        "Which planet is known as the 'Morning Star' or 'Evening Star'?",
    "option": ["Mars", "Venus", "Mercury", "Jupiter"],
    "answer_index": 1
  },
  {
    "id": 31,
    "question": "What is the boiling point of water in Celsius?",
    "option": ["100°C", "0°C", "50°C", "200°C"],
    "answer_index": 0
  },
  {
    "id": 32,
    "question": "In computer science, what does 'GUI' stand for?",
    "option": [
      "Graphical User Interface",
      "General User Interaction",
      "Global Unifying Interface",
      "General User Interface"
    ],
    "answer_index": 0
  },
  {
    "id": 33,
    "question": "Which planet is known as the 'Giant of our solar system'?",
    "option": ["Saturn", "Jupiter", "Uranus", "Neptune"],
    "answer_index": 1
  },
  {
    "id": 34,
    "question": "What is the chemical symbol for silver?",
    "option": ["Au", "Ag", "Fe", "Cu"],
    "answer_index": 1
  },
  {
    "id": 35,
    "question": "What is the capital of China?",
    "option": ["Seoul", "Beijing", "Tokyo", "Shanghai"],
    "answer_index": 1
  },
  {
    "id": 36,
    "question": "How many continents are there on Earth?",
    "option": ["Five", "Six", "Seven", "Eight"],
    "answer_index": 2
  },
  {
    "id": 37,
    "question": "What is the chemical symbol for sodium?",
    "option": ["S", "So", "Na", "Sn"],
    "answer_index": 2
  },
  {
    "id": 38,
    "question": "Who developed the theory of evolution by natural selection?",
    "option": [
      "Charles Darwin",
      "Gregor Mendel",
      "Louis Pasteur",
      "Stephen Hawking"
    ],
    "answer_index": 0
  },
  {
    "id": 39,
    "question": "What is the capital of India?",
    "option": ["Mumbai", "Delhi", "Kolkata", "Bangalore"],
    "answer_index": 1
  },
  {
    "id": 40,
    "question": "Which element has the chemical symbol 'N'?",
    "option": ["Neon", "Nitrogen", "Nickel", "Nobelium"],
    "answer_index": 1
  },
  {
    "id": 41,
    "question":
        "In computer programming, what does the acronym 'CSS' stand for?",
    "option": [
      "Computer Style Sheet",
      "Cascading Style Sheet",
      "Code Style Sheet",
      "Creative Style Sheet"
    ],
    "answer_index": 1
  },
  {
    "id": 42,
    "question": "What is the third planet from the sun?",
    "option": ["Venus", "Earth", "Mars", "Jupiter"],
    "answer_index": 1
  },
  {
    "id": 43,
    "question": "What is the capital of Brazil?",
    "option": ["Buenos Aires", "Lima", "Brasília", "Rio de Janeiro"],
    "answer_index": 2
  },
  {
    "id": 44,
    "question": "How many sides does a hexagon have?",
    "option": ["Four", "Six", "Eight", "Ten"],
    "answer_index": 1
  },
  {
    "id": 45,
    "question": "Who is the founder of SpaceX?",
    "option": ["Elon Musk", "Jeff Bezos", "Richard Branson", "Bill Gates"],
    "answer_index": 0
  },
  {
    "id": 46,
    "question": "What is the chemical symbol for carbon?",
    "option": ["Co", "Ca", "Cr", "C"],
    "answer_index": 3
  },
  {
    "id": 47,
    "question": "What is the capital of Australia?",
    "option": ["Sydney", "Melbourne", "Canberra", "Brisbane"],
    "answer_index": 2
  },
  {
    "id": 48,
    "question":
        "Which programming language is often used for game development?",
    "option": ["Java", "Python", "C#", "UnityScript"],
    "answer_index": 2
  },
  {
    "id": 49,
    "question": "What is the chemical symbol for potassium?",
    "option": ["K", "P", "Ka", "Ko"],
    "answer_index": 0
  },
  {
    "id": 50,
    "question": "What is the main component of Earth's atmosphere?",
    "option": ["Oxygen", "Nitrogen", "Carbon Dioxide", "Argon"],
    "answer_index": 1
  },
  {
    "id": 51,
    "question": "In mathematics, what is the value of Pi (π)?",
    "option": ["3.14", "2.71", "1.61", "4.13"],
    "answer_index": 0
  },
  {
    "id": 52,
    "question": "What is the chemical symbol for mercury?",
    "option": ["Me", "Hg", "Ma", "Mu"],
    "answer_index": 1
  },
  {
    "id": 53,
    "question": "What is the capital of Russia?",
    "option": ["St. Petersburg", "Moscow", "Kiev", "Berlin"],
    "answer_index": 1
  },
  {
    "id": 54,
    "question": "Which planet is known as the 'Ringed Planet'?",
    "option": ["Saturn", "Jupiter", "Uranus", "Neptune"],
    "answer_index": 0
  },
  {
    "id": 55,
    "question": "Who is the author of 'The Theory of Everything'?",
    "option": [
      "Stephen Hawking",
      "Albert Einstein",
      "Isaac Newton",
      "Galileo Galilei"
    ],
    "answer_index": 0
  },
  {
    "id": 56,
    "question": "What is the chemical symbol for lead?",
    "option": ["Ld", "Le", "Pb", "Pr"],
    "answer_index": 2
  },
  {
    "id": 57,
    "question":
        "Which programming language is often used for data visualization?",
    "option": ["Java", "Python", "R", "C++"],
    "answer_index": 1
  },
  {
    "id": 58,
    "question": "What is the capital of South Africa?",
    "option": ["Cape Town", "Pretoria", "Durban", "Johannesburg"],
    "answer_index": 1
  },
  {
    "id": 59,
    "question": "What is the chemical symbol for uranium?",
    "option": ["Ur", "Un", "Us", "U"],
    "answer_index": 3
  },
  {
    "id": 60,
    "question": "Which scientist is known for the laws of planetary motion?",
    "option": ["Kepler", "Galileo", "Newton", "Einstein"],
    "answer_index": 0
  },
  {
    "id": 61,
    "question": "In computer science, what does 'RAM' stand for?",
    "option": [
      "Random Access Memory",
      "Read-Only Memory",
      "Remote Access Memory",
      "Rapid Access Memory"
    ],
    "answer_index": 0
  },
  {
    "id": 62,
    "question": "What is the capital of Canada?",
    "option": ["Ottawa", "Toronto", "Vancouver", "Montreal"],
    "answer_index": 0
  },
  {
    "id": 63,
    "question": "How many planets are there in our solar system?",
    "option": ["Seven", "Eight", "Nine", "Ten"],
    "answer_index": 1
  },
  {
    "id": 64,
    "question": "What is the chemical symbol for tin?",
    "option": ["Ti", "Tn", "T", "Sn"],
    "answer_index": 3
  },
  {
    "id": 65,
    "question":
        "Which programming language is often used for artificial intelligence and machine learning?",
    "option": ["Java", "Python", "C++", "R"],
    "answer_index": 1
  },
  {
    "id": 66,
    "question": "What is the capital of Mexico?",
    "option": ["Madrid", "Lima", "Bogota", "Mexico City"],
    "answer_index": 3
  },
  {
    "id": 67,
    "question": "What is the largest moon in our solar system?",
    "option": ["Titan", "Ganymede", "Europa", "Callisto"],
    "answer_index": 1
  },
  {
    "id": 68,
    "question": "What is the chemical symbol for silicon?",
    "option": ["Si", "Se", "S", "So"],
    "answer_index": 0
  },
  {
    "id": 69,
    "question": "Who is the co-founder of Apple Inc.?",
    "option": ["Steve Jobs", "Bill Gates", "Steve Wozniak", "Tim Cook"],
    "answer_index": 2
  },
  {
    "id": 70,
    "question": "What is the capital of Argentina?",
    "option": ["Buenos Aires", "Rio de Janeiro", "Lima", "Bogota"],
    "answer_index": 0
  },
  {
    "id": 71,
    "question": "What is the chemical symbol for hydrogen?",
    "option": ["Hg", "He", "H", "Ho"],
    "answer_index": 2
  },
  {
    "id": 72,
    "question": "In mathematics, what is the value of the square root of 25?",
    "option": ["4", "5", "6", "7"],
    "answer_index": 1
  },
  {
    "id": 73,
    "question":
        "Which gas is known as the 'silent killer' due to its odorless and colorless nature?",
    "option": ["Oxygen", "Carbon Dioxide", "Methane", "Radon"],
    "answer_index": 3
  },
  {
    "id": 74,
    "question": "What is the capital of Germany?",
    "option": ["Berlin", "Munich", "Hamburg", "Frankfurt"],
    "answer_index": 0
  },
  {
    "id": 75,
    "question": "Which planet is known as the 'Evening Star'?",
    "option": ["Mars", "Venus", "Mercury", "Jupiter"],
    "answer_index": 1
  },
  {
    "id": 76,
    "question": "What is the chemical symbol for neon?",
    "option": ["Ne", "Na", "Ni", "No"],
    "answer_index": 0
  },
  {
    "id": 77,
    "question": "Who is the author of the 'Harry Potter' book series?",
    "option": [
      "J.K. Rowling",
      "George R.R. Martin",
      "Stephen King",
      "Dan Brown"
    ],
    "answer_index": 0
  },
  {
    "id": 78,
    "question": "What is the capital of South Korea?",
    "option": ["Beijing", "Tokyo", "Seoul", "Bangkok"],
    "answer_index": 2
  },
  {
    "id": 79,
    "question": "What is the chemical symbol for platinum?",
    "option": ["Pt", "Pl", "Pn", "Pm"],
    "answer_index": 0
  },
  {
    "id": 80,
    "question":
        "Which programming language is often used for scientific computing and numerical analysis?",
    "option": ["Java", "Python", "Fortran", "Ruby"],
    "answer_index": 2
  },
  {
    "id": 81,
    "question": "What is the largest desert in the world?",
    "option": ["Sahara Desert", "Arabian Desert", "Antarctica", "Gobi Desert"],
    "answer_index": 0
  },
  {
    "id": 82,
    "question": "What is the chemical symbol for calcium?",
    "option": ["Ca", "Co", "C", "Cl"],
    "answer_index": 0
  },
  {
    "id": 83,
    "question": "Who developed the theory of electromagnetism?",
    "option": [
      "Isaac Newton",
      "Albert Einstein",
      "James Clerk Maxwell",
      "Michael Faraday"
    ],
    "answer_index": 2
  },
  {
    "id": 84,
    "question": "What is the capital of Spain?",
    "option": ["Lisbon", "Barcelona", "Madrid", "Seville"],
    "answer_index": 2
  },
  {
    "id": 85,
    "question": "What is the chemical symbol for potassium iodide?",
    "option": ["KI", "IO", "PI", "KI2"],
    "answer_index": 0
  },
  {
    "id": 86,
    "question":
        "Which programming language is often used for mobile app development?",
    "option": ["Java", "Python", "Swift", "C++"],
    "answer_index": 2
  },
  {
    "id": 87,
    "question": "What is the capital of Egypt?",
    "option": ["Cairo", "Alexandria", "Luxor", "Aswan"],
    "answer_index": 0
  },
  {
    "id": 88,
    "question": "What is the chemical symbol for cobalt?",
    "option": ["Cb", "Ct", "Co", "Cu"],
    "answer_index": 2
  },
  {
    "id": 89,
    "question": "Who discovered penicillin?",
    "option": [
      "Marie Curie",
      "Alexander Fleming",
      "Louis Pasteur",
      "Florence Nightingale"
    ],
    "answer_index": 1
  },
  {
    "id": 90,
    "question": "What is the capital of Turkey?",
    "option": ["Istanbul", "Ankara", "Izmir", "Antalya"],
    "answer_index": 1
  },
  {
    "id": 91,
    "question": "Which planet is known as the 'Red Giant'?",
    "option": ["Mars", "Venus", "Jupiter", "Betelgeuse"],
    "answer_index": 3
  },
  {
    "id": 92,
    "question": "What is the chemical symbol for radium?",
    "option": ["Rd", "Ra", "Rm", "Ro"],
    "answer_index": 1
  },
  {
    "id": 93,
    "question": "In computer programming, what does 'API' stand for?",
    "option": [
      "Application Programming Interface",
      "Advanced Programming Interface",
      "Automated Programming Interface",
      "Application Process Integration"
    ],
    "answer_index": 0
  },
  {
    "id": 94,
    "question": "What is the capital of Nigeria?",
    "option": ["Lagos", "Abuja", "Kano", "Ibadan"],
    "answer_index": 1
  },
  {
    "id": 95,
    "question": "What is the chemical symbol for tungsten?",
    "option": ["Tg", "Tu", "Tw", "W"],
    "answer_index": 3
  },
  {
    "id": 96,
    "question": "Who is known as the 'Queen of Pop'?",
    "option": ["Madonna", "Beyoncé", "Lady Gaga", "Rihanna"],
    "answer_index": 0
  },
  {
    "id": 97,
    "question": "What is the capital of Saudi Arabia?",
    "option": ["Dubai", "Doha", "Riyadh", "Abu Dhabi"],
    "answer_index": 2
  },
  {
    "id": 98,
    "question": "What is the chemical symbol for silver bromide?",
    "option": ["AgBr", "AgO", "AgCl", "AgI"],
    "answer_index": 0
  },
  {
    "id": 99,
    "question":
        "Which programming language is often used for web development on the client-side?",
    "option": ["Java", "Python", "JavaScript", "Ruby"],
    "answer_index": 2
  },
  {
    "id": 100,
    "question": "What is the capital of Thailand?",
    "option": ["Hanoi", "Manila", "Jakarta", "Bangkok"],
    "answer_index": 3
  }
];

import 'package:flutter/material.dart';

class QuizController {
  int currentQuestionIndex = 0;
  int correctAnswers = 0;

  List<Map<String, dynamic>> questions = [
    {
      'question': 'What is the capital of France?',
      'options': ['London', 'Paris', 'Berlin', 'Madrid'],
      'correctAnswerIndex': 1,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'Which planet is known as the Red Planet?',
      'options': ['Venus', 'Mars', 'Jupiter', 'Saturn'],
      'correctAnswerIndex': 1,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'Who painted the Mona Lisa?',
      'options': ['Vincent van Gogh', 'Leonardo da Vinci', 'Pablo Picasso', 'Michelangelo'],
      'correctAnswerIndex': 1,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'What is the largest mammal in the world?',
      'options': ['African Elephant', 'Blue Whale', 'Giraffe', 'Hippopotamus'],
      'correctAnswerIndex': 1,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'What is the chemical symbol for gold?',
      'options': ['Au', 'Ag', 'Pb', 'Fe'],
      'correctAnswerIndex': 0,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'Who wrote the novel "To Kill a Mockingbird"?',
      'options': ['J.K. Rowling', 'Mark Twain', 'Harper Lee', 'George Orwell'],
      'correctAnswerIndex': 2,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'Which country is famous for the Great Wall of China?',
      'options': ['Japan', 'China', 'India', 'Korea'],
      'correctAnswerIndex': 1,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'What is the capital of Italy?',
      'options': ['Rome', 'Milan', 'Venice', 'Florence'],
      'correctAnswerIndex': 0,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'Who discovered penicillin?',
      'options': ['Alexander Fleming', 'Marie Curie', 'Albert Einstein', 'Isaac Newton'],
      'correctAnswerIndex': 0,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'What is the world\'s largest ocean?',
      'options': ['Atlantic Ocean', 'Indian Ocean', 'Arctic Ocean', 'Pacific Ocean'],
      'correctAnswerIndex': 3,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'What is the tallest mountain on Earth?',
      'options': ['Mount Everest', 'K2', 'Kangchenjunga', 'Lhotse'],
      'correctAnswerIndex': 0,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'Which gas is most abundant in Earth\'s atmosphere?',
      'options': ['Nitrogen', 'Oxygen', 'Carbon dioxide', 'Hydrogen'],
      'correctAnswerIndex': 0,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'Who developed the theory of relativity?',
      'options': ['Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Stephen Hawking'],
      'correctAnswerIndex': 1,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'What is the chemical formula for water?',
      'options': ['H2O', 'CO2', 'NaCl', 'NH3'],
      'correctAnswerIndex': 0,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'Which planet is known as the "Morning Star"?',
      'options': ['Mercury', 'Venus', 'Mars', 'Jupiter'],
      'correctAnswerIndex': 1,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'What is the primary function of the kidneys?',
      'options': ['Regulating blood pressure', 'Digesting food', 'Producing hormones', 'Filtering waste from blood'],
      'correctAnswerIndex': 3,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'What is the currency of Japan?',
      'options': ['Yuan', 'Euro', 'Dollar', 'Yen'],
      'correctAnswerIndex': 3,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'Who discovered electricity?',
      'options': ['Michael Faraday', 'Thomas Edison', 'Benjamin Franklin', 'Isaac Newton'],
      'correctAnswerIndex': 2,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'What is the largest organ in the human body?',
      'options': ['Heart', 'Liver', 'Skin', 'Brain'],
      'correctAnswerIndex': 2,
      'selectedOptionIndex': -1,
    },
    {
      'question': 'Which of the following is not a programming language?',
      'options': ['Python', 'Java', 'HTML', 'Ruby'],
      'correctAnswerIndex': 2,
      'selectedOptionIndex': -1,
    },
  ];

  void checkAnswer(int selectedAnswerIndex) {
    questions[currentQuestionIndex]['selectedOptionIndex'] = selectedAnswerIndex;
    if (selectedAnswerIndex == questions[currentQuestionIndex]['correctAnswerIndex']) {
      correctAnswers++;
    }
  }

  bool hasNextQuestion() {
    return currentQuestionIndex < questions.length - 1;
  }

  void nextQuestion() {
    if (hasNextQuestion()) {
      currentQuestionIndex++;
    }
  }

  void resetQuiz() {
    currentQuestionIndex = 0;
    correctAnswers = 0;
    questions.forEach((question) {
      question['selectedOptionIndex'] = -1;
    });
  }
}

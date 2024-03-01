import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_task/screens/categories_page.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _correctAnswers = 0;
  List<Map<String, dynamic>> _questions = [
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
  ];

  void _checkAnswer(int selectedAnswerIndex) {
    setState(() {
      _questions[_currentQuestionIndex]['selectedOptionIndex'] = selectedAnswerIndex;
      if (selectedAnswerIndex == _questions[_currentQuestionIndex]['correctAnswerIndex']) {
        _correctAnswers++;
      }
    });
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Quiz Result'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total Questions: ${_questions.length}'),
              Text('Correct Answers: $_correctAnswers'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the result dialog
                Navigator.of(context).pop(); // Close the quiz screen
                Get.offAll(Categories()); // Navigate to categories page
              },
              child: Text('Complete'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE4D4CC),
        title: Center(
          child: Text(
            'General Knowledge',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 18,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Question ${_currentQuestionIndex + 1}:',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    _questions[_currentQuestionIndex]['question'],
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                children: [
                  ...(_questions[_currentQuestionIndex]['options'] as List<String>).asMap().entries.map((entry) {
                    final index = entry.key;
                    final option = entry.value;
                    final isSelected = _questions[_currentQuestionIndex]['selectedOptionIndex'] == index;
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _checkAnswer(index);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                            if (isSelected) {
                              return Color(0xFFFFBD59); // Selected option color
                            }
                            return Color(0xFFE4D4CC); // Default option color
                          }),
                        ),
                        child: Text(option, style: TextStyle(color: isSelected ? Colors.black : null)),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_questions[_currentQuestionIndex]['selectedOptionIndex'] != -1) {
                  if (_currentQuestionIndex < _questions.length - 1) {
                    setState(() {
                      _currentQuestionIndex++;
                    });
                  } else {
                    _showResultDialog();
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please choose correct option'),
                    ),
                  );
                }
              },
              child: Text(_currentQuestionIndex < _questions.length - 1 ? 'Next' : 'Finish'),
            ),
          ],
        ),
      ),


    );
  }
}

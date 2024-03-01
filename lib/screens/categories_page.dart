import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_task/screens/quiz_screen.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Quiz Categories',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Text(
                  'Choose category and start your quiz',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 250,
                        height: 120,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(QuizScreen());
                          },
                          child: Text(
                            'General Knowledge',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold, // Making the text bold
                              fontFamily: 'Montserrat', // Setting a custom font
                              shadows: [
                                Shadow(
                                  color: Colors.grey.withOpacity(0.5), // Shadow color
                                  offset: Offset(2, 2), // Shadow offset
                                  blurRadius: 3, // Shadow blur radius
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFFBD59),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: 250,
                        height: 120,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Science',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold, // Making the text bold
                              fontFamily: 'Montserrat', // Setting a custom font
                              shadows: [
                                Shadow(
                                  color: Colors.grey.withOpacity(0.5), // Shadow color
                                  offset: Offset(2, 2), // Shadow offset
                                  blurRadius: 3, // Shadow blur radius
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE4D4CC),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: 250,
                        height: 120,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'English',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold, // Making the text bold
                              fontFamily: 'Montserrat', // Setting a custom font
                              shadows: [
                                Shadow(
                                  color: Colors.grey.withOpacity(0.5), // Shadow color
                                  offset: Offset(2, 2), // Shadow offset
                                  blurRadius: 3, // Shadow blur radius
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFFBD59),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: 250,
                        height: 120,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'History',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold, // Making the text bold
                              fontFamily: 'Montserrat', // Setting a custom font
                              shadows: [
                                Shadow(
                                  color: Colors.grey.withOpacity(0.5), // Shadow color
                                  offset: Offset(2, 2), // Shadow offset
                                  blurRadius: 3, // Shadow blur radius
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE4D4CC),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),


                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

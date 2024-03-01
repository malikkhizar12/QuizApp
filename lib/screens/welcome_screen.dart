import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_task/screens/categories_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to World Best Quiz App!',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Text(
                  'Test your abilities and knowledge easily by accomplishing different quizzes.',
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, top: 60),
                child: Image.asset('images/welcome_screen_image.png'),
              ),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offAll(Categories());
                        },
                        child: const Text(
                          'Continue as a guest',
                          style: TextStyle(color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFFBD59),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Center(
                child: Text('Or' ,
                  style: TextStyle(
                      fontSize: 20
                  ),),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Create Account',
                          style: TextStyle(color: Colors.black,
                          fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFE4D4CC),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have an Account?' ,
                    style: TextStyle(
                        fontSize: 15
                    ),),
                  Text(' Login',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 15,
                    ),)
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

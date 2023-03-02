import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double normalFontSize = 12;

    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Image.asset('images/login.8d01124a.png'),),
        const SizedBox(height: 20,),
        Expanded(
            flex: 8,
            child: Container(
              decoration: const BoxDecoration(
                // color: Colors.yellow,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                      'Say hello to your English tutors',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Become fluent faster through one on one video chat lessons tailored to your goals.',
                      style: TextStyle(
                          fontSize: normalFontSize,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'EMAIL',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: normalFontSize,
                            )
                        ),
                        const SizedBox(height: 10,),
                        TextField(
                          style:TextStyle(
                              fontSize:normalFontSize
                          ),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.teal)
                            ),
                            isDense: true,                      // Added this
                            contentPadding: EdgeInsets.all(normalFontSize),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Text(
                            'PASSWORD',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: normalFontSize,
                            )
                        ),
                        const SizedBox(height: 10,),
                        TextField(
                          style:TextStyle(
                              fontSize:normalFontSize
                          ),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.teal)
                            ),
                            isDense: true,                      // Added this
                            contentPadding: EdgeInsets.all(normalFontSize),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: normalFontSize,
                            )
                        ),
                        const SizedBox(height: 10,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(const Size.fromHeight(50).width, 35),
                            backgroundColor: Colors.blueAccent
                          ),
                          onPressed: () {},
                          child: Text(
                            'LOG IN',
                              style: TextStyle(
                                fontSize: normalFontSize,
                              )
                          ),
                        ),
                      ]
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                            'Or continue with',
                            style: TextStyle(
                              fontSize: normalFontSize,
                            )
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(2),
                                  surfaceTintColor: Colors.blueAccent
                              ),
                              child: const Icon(
                                Icons.facebook,
                                size: 25,
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(2),
                                  surfaceTintColor: Colors.blueAccent
                              ),
                              child: const Icon(
                                Icons.facebook_outlined,
                                size: 25,
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(2),
                                surfaceTintColor: Colors.blueAccent
                              ),
                              child: const Icon(
                                Icons.phone_android,
                                size: 25,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Not a member yet? ',
                              style: TextStyle(
                                fontSize: normalFontSize,
                              )
                          ),
                            Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: normalFontSize,
                                )
                            ),],
                        ),
                        const SizedBox(height: 10,),
                      ],
                    ),
                  )
                ],
              ),
            ),),
              Padding(
              padding: EdgeInsets.only(
    bottom: MediaQuery.of(context).viewInsets.bottom))
      ],
    );
  }
}
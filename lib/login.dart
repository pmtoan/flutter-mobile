import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double normalFontSize = 12;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(child: Image.asset('images/login.8d01124a.png'), height: 100),
          const SizedBox(height: 20,),
          Column(
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
              LoginForm(),
              LoginMethod(),
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
            ],
          ),
          Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double normalFontSize = 14;
    return Container(
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
              controller: emailController,
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
              controller: passwordController,
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
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          content: Text('Email: ${emailController.text} \nPassword: ${passwordController.text}')
                      );
                    }
                );
              },
              child: Text(
                  'LOG IN',
                  style: TextStyle(
                    fontSize: normalFontSize,
                  )
              ),
            ),
          ]
      ),
    );
  }
}

class LoginMethod extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
              'Or continue with',
              style: TextStyle(
                fontSize: 14,
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
                    side: BorderSide(width: 1, color: Colors.blueAccent)
                ),
                child: SizedBox(height: 25,child: Image.asset('images/facebook.png', fit: BoxFit.fitHeight, color: Colors.blueAccent,)),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(2),
                    side: BorderSide(width: 1, color: Colors.blueAccent)
                ),
                child:SizedBox(height: 25,child: Image.asset('images/google.png', fit: BoxFit.fitHeight)),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(2),
                    side: BorderSide(width: 1, color: Colors.blueAccent)
                ),
                child: SizedBox(height: 25,child: Image.asset('images/phone.png', fit: BoxFit.fitHeight)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

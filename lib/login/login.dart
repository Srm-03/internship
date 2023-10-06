import 'package:flutter/material.dart';
import 'package:homepage1/login/Landing%20page/App.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  String emailValue = '';
  String passwordValue = '';
  bool isObscure = false;
  String id = "soumyaranjan19752003@gmail.com";
  String pass = "Mishraji@123";
  RegExp passwordValidator =
      RegExp(r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}$');
  RegExp emailValidator = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Login Page"),
        backgroundColor: Color.fromARGB(255, 251, 6, 6),
        actions: [
          IconButton(
            onPressed: () {
              Text('i will do it latter');
            },
            icon: const Icon(Icons.question_mark_outlined),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Column(children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          child: Image(
                            image: AssetImage('images/redlogo.png'),
                            height: 200,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextField(
                          onChanged: (data) {
                            setState(() {
                              emailValue = data;
                            });
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 251, 6, 6),
                              ),
                            ),
                            fillColor: Color.fromARGB(255, 251, 6, 6),
                            hintText: "email",
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.email),
                              onPressed: () {},
                            ),
                            errorText: emailValue.isEmpty ||
                                    emailValidator.hasMatch(emailValue)
                                ? null
                                : "Enter valid email id.",
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (data) {
                            setState(() {
                              passwordValue = data;
                            });
                          },
                          obscureText: isObscure,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 251, 6, 6),
                              ),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                isObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  isObscure = !isObscure;
                                });
                              },
                            ),
                            errorText: passwordValue.isEmpty ||
                                    passwordValidator.hasMatch(passwordValue)
                                ? null
                                : "Password should be of length at least 8 and must contain at least\n one digit, one uppercase,"
                                    "one lowercase and one special symbol.",
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color: Color.fromARGB(255, 251, 6, 6),
                                ),
                              );
                              if (emailValue == id && passwordValue == pass) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Landing()));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 251, 6, 6)),
                              backgroundColor: Color.fromARGB(255, 251, 6, 6),
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 15,
                              ),
                            ),
                            child: const Text("Sign In"),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 251, 6, 6)),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text("OR"),
                        const SizedBox(
                          height: 40,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Don't have an account?",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 251, 6, 6)),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Sign up",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 251, 6, 6),
                                ),
                                recognizer: TapAndPanGestureRecognizer(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          );
        },
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}

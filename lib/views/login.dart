import 'package:flutter/material.dart';
import 'package:midterm_practical/route/route.dart' as route;
import 'package:midterm_practical/views/drawer.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  static const String validEmail = 'jeroldgomez@gmail.com';
  static const String validPassword = '1234567';

  static const String validEmail2 = 'jobvillanueva@gmail.com';
  static const String validPassword2 = 'aaBBcc123';

  static const String validEmail3 = 'markjavelosa@gmail.com';
  static const String validPassword3 = 'helloWorld';

  bool _validateEmail(String value) {
    return value == validEmail || value == validEmail2 || value == validEmail3;
  }

  bool _validatePass(String value) {
    return value == validPassword ||
        value == validPassword2 ||
        value == validPassword3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formfield,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Container(
              child: Image.asset(
                'assets/images/lgbg.jpg',
                fit: BoxFit.cover,
              ),
            ),

            Positioned(
              top: 130, // Adjust the top position as needed
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/applogo.png',
                  width: 120,
                  height: 120,
                ),
              ),
            ),

            // Login Form
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff1a2436).withOpacity(0.6),
                  borderRadius: BorderRadius.only(
                    topLeft:
                        Radius.circular(40.0), // Bottom-right corner radius
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 40, right: 40, bottom: 60, top: 40),
                  child: Column(
                    children: [
                      // Row(
                      //   children[
                      //     Column(
                      //       children[],
                      //     ),
                      //   ],
                      // ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Welcome back ,',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              color: Color(0xffd7d7d7)),
                        ),
                      ),
                      // SizedBox(height: 2),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Login to continue.',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              color: Color(0xffd7d7d7)),
                        ),
                      ),

                      SizedBox(height: 30),

                      // Email Input Field
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: Color(0xffe1e1e1),
                        ),
                        decoration: InputDecoration(
                          labelText: 'Email',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd7d7d7)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .red), // Define the error border style
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(
                              color: Color(0xffd7d7d7), fontFamily: 'Poppins'),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                left: 5.0), // Adjust the left padding here
                            child: Icon(Icons.email, color: Color(0xffd7d7d7)),
                          ),
                          errorStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xffF45170),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        validator: (value) {
                          bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value!);
                          if (value.isEmpty) {
                            return "Enter Email";
                          } else if (!emailValid) {
                            return "Enter Valid Email";
                          } else if (!_validateEmail(value)) {
                            return 'Incorrect email';
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 15),

                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: passController,
                        obscureText: passToggle,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Color(0xffe1e1e1)),
                        decoration: InputDecoration(
                            labelText: 'Password',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffd7d7d7)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .red), // Define the error border style
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelStyle: TextStyle(
                                color: Color(0xffd7d7d7),
                                fontFamily: 'Poppins'),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(
                                  left: 5.0), // Adjust the left padding here
                              child: Icon(Icons.lock, color: Color(0xffd7d7d7)),
                            ),
                            errorStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xffF45170),
                              fontWeight: FontWeight
                                  .w400, // Set the error message font color here
                            ),
                            suffix: InkWell(
                              onTap: () {
                                setState(() {
                                  passToggle = !passToggle;
                                });
                              },
                              child: Icon(
                                  passToggle
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Color(0xffd7d7d7)),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Password";
                          } else if (value.length < 6) {
                            return "Password should exceed 6 characters";
                          } else if (!_validatePass(value)) {
                            return 'Incorrect password';
                          }
                          return null; // Return null when validation passes
                        },
                      ),

                      SizedBox(height: 40),

                      // Login Button
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Poppins',
                                  color: Color(0xffe1e1e1),
                                ),
                              ),
                              onPressed: () {
                                if (_formfield.currentState!.validate()) {
                                  if (_validateEmail(emailController.text) &&
                                      _validatePass(passController.text)) {
                                    // Login successful
                                    print("Login Successful");
                                    UserInfo.signedInEmail =
                                        emailController.text;
                                    emailController.clear();
                                    passController.clear();

                                    Navigator.pushNamed(
                                        context, route.navPageRoute);
                                  } else {
                                    // Incorrect email or password
                                    print("Incorrect email or password");
                                  }
                                }
                              },
                              // onPressed: () {
                              //   if (_formfield.currentState!.validate()) {
                              //     // Check if entered email and password match the hardcoded values
                              //     if (emailController.text == validEmail &&
                              //         passController.text == validPassword) {
                              //       // Email and password match, proceed to the next screen
                              //       print("Login Successful");
                              //       emailController.clear();
                              //       passController.clear();
                              //       Navigator.pushNamed(
                              //           context, route.navPageRoute);
                              //     } else {
                              //       // Email and password do not match
                              //       print("Incorrect email or password");
                              //     }
                              //   }
                              // },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 25),
                                backgroundColor:
                                    Color(0xff4F5EFF).withOpacity(0.7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Adjust border radius
                                ),
                                // side: BorderSide(
                                //     color: Color(0xffd7d7d7), width: 0.7),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 30),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 1,
                            width: 130,
                            color: Color(0xff9c9c9c)
                                .withOpacity(0.3), // Color of the divider
                          ),
                          Spacer(),
                          // Image.asset(
                          //   'assets/images/bcN1.gif',
                          //   width: 35,
                          //   height: 35,
                          // ),
                          Container(
                            height: 1,
                            width: 130,
                            color: Color(0xff9c9c9c)
                                .withOpacity(0.3), // Color of the divider
                          ),
                        ],
                      ),
                      // SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

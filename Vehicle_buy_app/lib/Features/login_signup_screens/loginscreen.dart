import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/Common/routes.dart';
import 'package:shadow_overlay/shadow_overlay.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  bool _secureText = true;
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ShadowOverlay(
                    shadowHeight: 1200,
                    shadowWidth: screenWidth,
                    shadowColor: Colors.black.withOpacity(0.95),
                    child: Image.asset(
                      'assets/images/mountain.jpg',
                      height: screenHeight,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top: 180,
                      left: screenWidth * 0.38,
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w500),
                      )),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        //Email Id
                        Padding(
                            padding:
                                EdgeInsets.only(top: 300, left: 20, right: 20),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null ||
                                    !value.contains('@') ||
                                    !value.contains('.com'))
                                  return 'Please enter correct email id';
                                else
                                  // _emailErrorText = null; better use return here
                                  return null;
                              },
                              controller: _emailController,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                  focusColor: Colors.white,
                                  enabled: true,
                                  labelText: 'Email id',
                                  labelStyle: TextStyle(color: Colors.white),
                                  // hintText: 'example@gmail.com',
                                  // fillColor: Color.fromRGBO(222, 15, 0, 1),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            )),

                        SizedBox(
                          height: 40,
                        ),

                        //password
                        Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: TextFormField(
                              validator: (value) {
                                if (_passwordController.text.length < 8)
                                  return 'Enter atleast 8 character';
                                else
                                  return null;
                              },
                              controller: _passwordController,
                              obscureText: _secureText,
                              obscuringCharacter: '*',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    color: Colors.white,
                                    icon: Icon(_secureText
                                        ? Icons.visibility_off
                                        : Icons.remove_red_eye),
                                    onPressed: () {
                                      setState(() {
                                        _secureText = !_secureText;
                                      });
                                    },
                                  ),
                                  focusColor: Colors.white,
                                  enabled: true,
                                  labelText: 'Password',

                                  // errorText: _passwordErrorText,
                                  labelStyle: TextStyle(color: Colors.white),

                                  // hintText: 'example@gmail.com',
                                  // fillColor: Color.fromRGBO(222, 15, 0, 1),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            )),

                        SizedBox(
                          height: 55,
                        ),

                        Container(
                          width: 300,
                          height: 45,
                          child: ElevatedButton(
                              onPressed: () {
                                _formkey.currentState!.validate();
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(fontSize: 18),
                              ),
                              style: ButtonStyle(
                                  shadowColor:
                                      MaterialStateProperty.all(Colors.red),
                                  elevation: MaterialStateProperty.all(25),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.red))),
                        ),
                        //Forget Password
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Forget password?',
                          style: TextStyle(
                              color: Color.fromARGB(255, 67, 148, 255),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.getHomeRoute()); //routing
                      },
                      child: Row(children: [
                        Text(
                          'Skip Now',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )
                      ]),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}


//for email validation another method

//  validator: (value) => validateEmail(value),
// String validateEmail(String? value) {
//     String pattern =
//         r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
//         r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
//         r"{0,253}[a-zA-Z0-9])?)*$";
//     RegExp regex = RegExp(pattern);
//     if (value == null || value.isEmpty || !regex.hasMatch(value))
//       return 'Enter a valid email address';
//     else
//       return null;
//   }

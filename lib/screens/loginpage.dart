import 'package:flutter/material.dart';
import 'package:flutter_my_project/mobelClass/UserModel.dart';
import 'package:flutter_my_project/screens/Registerpage.dart';
import 'package:flutter_my_project/screens/deshboard.dart';
import 'package:flutter_my_project/widget/components/bottomText.dart';
import 'package:provider/provider.dart';

import '../widget/components/Titles.dart';
import '../widget/components/logo.dart';

class LoginPage extends StatefulWidget {
  static const routerName = '/Login_screen';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool presstoggle = true;
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF044D60),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF044D60),
      body: SafeArea(
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            reverse: true,
            child: Column(
              children: [
                const MyLogo(),
                const SizedBox(
                  height: 20,
                ),
                const ScreenText(
                  title: 'Welcome here',
                  subtitle: 'Login to ou account',
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          fillColor: Color(0xFF066F85),
                          filled: true,
                          border: OutlineInputBorder(),
                          labelText: 'Enter Email',
                          prefixIcon: Icon(Icons.email),
                        ),
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        scrollPadding: EdgeInsets.only(bottom: 40.0),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Email';
                          }
                          bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value);
                          if (!emailValid) {
                            return 'Enter valid Email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          fillColor: Color(0xFF066F85),
                          filled: true,
                          border: const OutlineInputBorder(),
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  presstoggle = !presstoggle;
                                });
                              },
                              child: presstoggle
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility)),
                        ),
                        obscureText: presstoggle,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Password';
                          } else if (value.length < 6) {
                            return 'Password should be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        bool isLoggedIn = userProvider.isUserPresent(
                          emailController.text,
                          passwordController.text,
                        );

                        if (isLoggedIn) {
                          Navigator.pushNamed(context, DashBoard.routeName);
                        } else {}

                        emailController.clear();
                        passwordController.clear();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Color(0xFF0390A1)),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const BottomText(
                  text: "Don't have an account?",
                  btntext: 'sign in',
                  routerName: RegisterPage.routerName,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

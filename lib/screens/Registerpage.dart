import 'package:flutter/material.dart';
import 'package:flutter_my_project/mobelClass/UserModel.dart';
import 'package:flutter_my_project/screens/loginpage.dart';
import 'package:provider/provider.dart';
import '../widget/components/Titles.dart';
import '../widget/components/bottomText.dart';

class RegisterPage extends StatefulWidget {
  static const routerName = '/Register_screen';
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final Formkey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
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
          key: Formkey,
          child: SingleChildScrollView(
            reverse: true,
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                const ScreenText(
                  title: 'Welcome Here',
                  subtitle: "Register To Movies Hub",
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: name,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Name';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          fillColor: Color(0xFF066F85),
                          filled: true,
                          border: OutlineInputBorder(),
                          labelText: 'User Name',
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: email,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Email";
                          }
                          bool emailvalid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value);
                          if (!emailvalid) {
                            return 'Enter valid Email';
                          }
                        },
                        decoration: const InputDecoration(
                          fillColor: Color(0xFF066F85),
                          filled: true,
                          border: OutlineInputBorder(),
                          labelText: 'Enter email',
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: pass,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter PassWord";
                          } else if (pass.text.length < 6) {
                            return "Password should be 6 Characters long";
                          }
                        },
                        decoration: InputDecoration(
                          fillColor: Color(0xFF066F85),
                          filled: true,
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: InkWell(
                            onTap: () => setState(() {
                              presstoggle = !presstoggle;
                            }),
                            child: presstoggle
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                          ),
                        ),
                        obscureText: presstoggle,
                      ),
                      const SizedBox(
                        height: 10,
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
                      if (Formkey.currentState!.validate()) {
                        userProvider.addUser(
                          name.text,
                          email.text,
                          pass.text,
                        );

                        Navigator.pushNamed(context, LoginPage.routerName);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: const Color(0xFF0390A1)),
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const BottomText(
                  text: "Already have an account?",
                  btntext: 'Login',
                  routerName: LoginPage.routerName,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

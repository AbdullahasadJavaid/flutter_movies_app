import 'package:flutter/material.dart';
import 'package:flutter_my_project/screens/Registerpage.dart';
import 'package:flutter_my_project/screens/loginpage.dart';
import 'package:flutter_my_project/widget/components/Titles.dart';
import 'package:page_transition/page_transition.dart';

import '../widget/components/logo.dart';

class MainScreen extends StatefulWidget {
  static const routename = '/Main_screen';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF044D60),
      body: SafeArea(
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MyLogo(),
                const SizedBox(
                  height: 20,
                ),
                const ScreenText(
                    title: 'Panda Movie Hub',
                    subtitle: 'Enjoy your Movies with panda'),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: LoginPage(),
                              type: PageTransitionType.fade));
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
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: RegisterPage(),
                              type: PageTransitionType.leftToRight));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Color(0xFF0390A1)),
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_my_project/screens/deshboard.dart';
import 'package:flutter_my_project/screens/detailScreen.dart';
import 'package:flutter_my_project/screens/loginpage.dart';
import 'package:flutter_my_project/splashScreen.dart';
import 'package:provider/provider.dart';
import 'mobelClass/UserModel.dart';
import 'screens/Registerpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashSCreen(),
          LoginPage.routerName: (context) => LoginPage(),
          RegisterPage.routerName: (context) => RegisterPage(),
          DashBoard.routeName: (context) => DashBoard(),
          DetialScreen.routeName: (context) => DetialScreen(),
        },
      ),
    );
  }
}

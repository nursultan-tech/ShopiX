import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopappfinal/ui/splashscreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter E-Commerce',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
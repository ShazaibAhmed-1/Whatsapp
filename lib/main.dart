import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/presentation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(720, 1640),
      child: MaterialApp(
        title: 'Whatsapp',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        debugShowCheckedModeBanner: false,
        home: const home_screen(),
      ),
    );
  }
}

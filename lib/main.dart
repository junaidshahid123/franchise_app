import 'package:flutter/material.dart';
import 'package:franchise_app/welcome/welcome_view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        // useInheritedMediaQuery: true,
        // title: 'Franchise App',
        //   color: Colors.white,
        // darkTheme: ThemeData(
        //   fontFamily: 'Graphik',
        //   brightness: Brightness.dark,
        //     primaryColor: Colors.white,
        //   useMaterial3: true,
        // ),
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   fontFamily: 'Graphik',
        //   brightness: Brightness.light,
        //   useMaterial3: true,
        // ),
        home: WelcomeView());

  }
}

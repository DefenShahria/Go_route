import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goroute/screens/fifthPage.dart';
import 'package:goroute/screens/fourthPage.dart';
import 'package:goroute/screens/homePage.dart';
import 'package:goroute/screens/secondPage.dart';
import 'package:goroute/screens/thirdPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: "/home",
  routes: <RouteBase>[
    GoRoute(
      name: "/home",
      path: "/home",
      builder: (context,state){
        return HomePage();
      }
    ),
    GoRoute(
      name: "/secondPage",
      path: "/SecondPage",
      builder: (context,state){
        return SecondPage();
      }
    ),
    GoRoute(
        name: "/thirdPage",
        path: "/thirdPage",
        builder: (context,state){
          return ThirdPage();
        }
    ),
    GoRoute(
        name: "/fourthPage",
        path: "/fourthPage",
        builder: (context,state){
          return FourthPage();
        }
    ),
    GoRoute(
        name: "/fifthPage",
        path: "/fifthPage",
        builder: (context,state){
          return FifthPage();
        }
    ),

  ],
);

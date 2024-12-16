import 'package:bottomnavigationview/bottom_screen/about.dart';
import 'package:bottomnavigationview/bottom_screen/cart.dart';
import 'package:bottomnavigationview/bottom_screen/dashboard.dart';
import 'package:bottomnavigationview/bottom_screen/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => DashboardView(),
        '/cart': (context) => CartScreen(),
        "/profile": (context) => ProfilePage(),
        "/about": (context) => AboutScreen(),
      }));
}

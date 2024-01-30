
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'AddScreen.dart';
import 'ReelScreen.dart';
import 'SearchScreen.dart';
import 'ProfileScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mainpage(),
    );
  }
}

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int index = 0;
  final screens = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    ReelScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
    body: screens[index],
    bottomNavigationBar: NavigationBarTheme(
      data : const NavigationBarThemeData(
        shadowColor: Color.fromARGB(255, 29, 29, 29),
        height: 80,
        indicatorColor: Colors.transparent
      ),

      child: NavigationBar(
        backgroundColor: Colors.black,
        selectedIndex: index,
        onDestinationSelected: (index) => 
          setState(() => this.index = index),

        destinations: [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home_filled,
              color: Colors.white,
              ),
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
              ) ,
            label: "",
      
            ),
      
             NavigationDestination(
            icon: Icon(Icons.search, color: Colors.white,) ,
            label: "",
            ),
      
            NavigationDestination(
            icon: Icon(Icons.add_box_outlined,color: Colors.white,) ,
            selectedIcon: Icon(Icons.add_box, color: Colors.white,),
            label: "",
            ),
      
            NavigationDestination(
            icon: Icon(Icons.video_collection_outlined,color :Colors.white,) ,
            selectedIcon: Icon(Icons.video_collection, color: Colors.white,),
            label: "",
            ),
      
            NavigationDestination(
            icon: Icon(Icons.person_outlined,color: Colors.white,) ,
            label: "",
            selectedIcon: Icon(Icons.person, color: Colors.white,),
            )
        ],
      ),
    ),
  );
}
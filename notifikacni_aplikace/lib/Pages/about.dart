import 'package:flutter/material.dart';
import 'main.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nAPP MVČR',
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarName(),
      drawer: AppDrawer(),
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 15),
          color: Color(0xFFfefae0),
          height: MediaQuery.of(context).size.height - 102.3,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 40),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                    color: Color(0xFFfefae0),
                    border: Border.all(width: 2),
                    gradient: LinearGradient(
                      colors: [Color(0xFFfefae0), Color.fromARGB(255, 136, 144, 98)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'About',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 45,
                      fontFamily: 'Rethink Sans',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.75,
                    ),
                  ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Developers:'
                    '\nJan Votroubek & Maxim Albrecht'
                    '\n 17/10/2024 -- Today'
                    '\nVersion: 0.0.4',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Rethink Sans',
                      wordSpacing: 0,
                      letterSpacing: 0,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'This app was created as a project at High School of applied cybernetics. '
                    'Application is a fictional for use of the Ministry of the Interior of the Czech Republic.\n'
                    'The app is used to notify politicans in MVČR of important events and news. '
                    'The app also allows politicans to set up their own profile and customize the app to their liking.\n',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Rethink Sans',
                      wordSpacing: 0,
                      letterSpacing: 0,
                    )
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'The app is still in development and new features will be added in the future.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Rethink Sans',
                      wordSpacing: 0,
                      letterSpacing: 0, 
                    ),
                  ),
                const Spacer(),
              Text(
              '© Jan Votroubek & Maxim Albrecht, 2024 - 2025',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Rethink Sans',
                fontSize: 14,
                color: Colors.grey[500],
                wordSpacing: 0,
                letterSpacing: 0,
                 ),
                ),  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
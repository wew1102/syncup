import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
void main() {
  runApp(SyncUpApp());
}

class SyncUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SyncUpScreen(),
    );
  }
}

class SyncUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(230, 250, 103, 18), // Orange background color
      body: Stack(
        children: [
          // Background circles
          Positioned(
            top: -50,
            left: -50,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
            ),
          ),
          Positioned(
            bottom: -100,
            right: -100,
            child: CircleAvatar(
              radius: 150,
              backgroundColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
            ),
          ),
          Positioned(
            top: 300,
            right: -150,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
            ),
          ),
          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/syncupwhite.png', // Logo image
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'SYNC UP',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "IF PEOPLE AREN'T IN SYNC, THINGS WON'T WORK OUT WELL.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                    // Handle login button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Color(0xFFFF6E1B),// Orange text color
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpScreen()),
                        );
                    // Handle sign up button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,//button color
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Color(0xFFFF6E1B),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

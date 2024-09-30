import 'package:flutter/material.dart';
import 'package:test2/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 60),
              // Heading
              Text(
                'Log Masuk',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6B2572), // Purple color
                ),
              ),
              SizedBox(height: 40),
              // Username/Email TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nama Pengguna / Emel',
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Password TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Katalaluan',
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Forgot password text
              TextButton(
                onPressed: () {
                  // Add forgot password logic here
                },
                child: Text(
                  'Lupa Nama Pengguna atau Katalaluan?',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              SizedBox(height: 10),
              // Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6B2572), // Purple color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {
                  // Navigate to the MosqueSearchScreen when pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  'Log Masuk',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              // Or separator
              Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.black45),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Atau Log Masuk'),
                  ),
                  Expanded(
                    child: Divider(color: Colors.black45),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Google Sign In Button
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                icon: Image.asset(
                  'assets/google-symbol.png', // Add Google icon asset here
                  height: 24,
                  width: 24,
                ),
                onPressed: () {
                  // Add Google login logic here
                },
                label: Text(
                  'Log Masuk dengan Google',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 20),
              // Register link
              TextButton(
                onPressed: () {
                  // Add register navigation here
                },
                child: Text(
                  'Tiada Akaun? Daftar',
                  style: TextStyle(
                    color: Color(0xFF6B2572), // Purple color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

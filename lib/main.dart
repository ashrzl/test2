import 'package:flutter/material.dart';
import 'package:test2/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 60),
              // Heading
              const Text(
                'Log Masuk',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6B2572), // Purple color
                ),
              ),
              const SizedBox(height: 40),

              // Username/Email TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nama Pengguna / Emel',
                  prefixIcon: const Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Katalaluan',
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: const Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Forgot password text
              TextButton(
                onPressed: () {
                  // Add forgot password logic here
                },
                child: const Text(
                  'Lupa Nama Pengguna atau Katalaluan?',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              const SizedBox(height: 10),

              // Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6B2572), // Purple color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {
                  // Navigate to the MosqueSearchScreen when pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text(
                  'Log Masuk',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),

              // Or separator
              const Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.black45),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Atau Log Masuk'),
                  ),
                  Expanded(
                    child: Divider(color: Colors.black45),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Google Sign In Button
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                icon: Image.asset(
                  'assets/google-symbol.png', // Add Google icon asset here
                  height: 24,
                  width: 24,
                ),
                onPressed: () {
                  // Add Google login logic here
                },
                label: const Text(
                  'Log Masuk dengan Google',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),

              // Register link
              TextButton(
                onPressed: () {
                  // Add register navigation here
                },
                child: const Text(
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

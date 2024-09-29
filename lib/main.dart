import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top title "Log Masuk"
            Center(
              child: Text(
                'Log Masuk',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C0065), // Assuming this color for the text
                ),
              ),
            ),
            SizedBox(height: 40),

            // Username / Email Text Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Nama Pengguna / Emel',
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Password Text Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Katalaluan',
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility_off),
                  onPressed: () {},
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Remember Me Checkbox
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (bool? value) {},
                ),
                Text('Remember Me'),
              ],
            ),

            // "Lupa Nama Pengguna atau Katalaluan?"
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Lupa Nama Pengguna atau Katalaluan?',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),

            // Log Masuk Button
            ElevatedButton(
              onPressed: () {},
              child: Text('Log Masuk'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5C0065), // Button background color
                padding: EdgeInsets.symmetric(vertical: 15),
                textStyle: TextStyle(
                    fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Or Divider
            Row(
              children: [
                Expanded(child: Divider(color: Colors.black26)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Atau Log Masuk'),
                ),
                Expanded(child: Divider(color: Colors.black26)),
              ],
            ),
            SizedBox(height: 20),

            // Google Sign In Button
            // ElevatedButton.icon(
            //   icon: Icon(Icons.g_mobiledata, size: 30),
            //   label: Text('Log in dengan Google'),
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //     foregroundColor: Colors.black,
            //     backgroundColor: Colors.white,
            //     side: BorderSide(color: Colors.black12),
            //   ),
            // ),
            SizedBox(height: 20),

            // Daftar Text
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Tiada Akaun? ',
                  style: TextStyle(color: Colors.black54),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Daftar',
                      style: TextStyle(
                        color: Color(0xFF5C0065),
                        fontWeight: FontWeight.bold,
                      ),
                      // Can add a GestureDetector to navigate to the registration screen
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

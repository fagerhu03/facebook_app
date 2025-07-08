import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Facebook logo
                Image.asset(
                  'assets/logo.png',
                  height: 80,
                ),
                const SizedBox(height: 40),

                // Email or phone input
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Mobile Number or Email Address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                const SizedBox(height: 16),

                // Password input
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
                const SizedBox(height: 24),

                // Login button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1877F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Login', style: TextStyle(fontSize: 16)),
                  ),
                ),
                const SizedBox(height: 16),

                // Forgot password
                const Text(
                  'Forgotten Password ?',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 32),

                // Create account button
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    side: const BorderSide(color: Color(0xFF1877F2)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(color: Color(0xFF1877F2), fontSize: 16),
                  ),
                ),

                const SizedBox(height: 32),

                // Meta branding
                Column(
                  children: [
                    const Text('From', style: TextStyle(color: Colors.grey)),
                    const SizedBox(height: 4),
                    Image.asset('assets/meta_logo.png', height: 24),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:edupro/screens/home_screen.dart';
import 'package:flutter/material.dart';

// Excelerate Gradient
const LinearGradient kGradient = LinearGradient(
  colors: [Color(0xFF6C63FF), Color(0xFF3A8DFF)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

class LetsYouInScreen extends StatelessWidget {
  const LetsYouInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Let's you in",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1B1D3A),
                ),
              ),
              const SizedBox(height: 40),

              _SocialButton(
                icon: Icons.g_mobiledata,
                text: "Continue with Google",
                onTap: () {},
              ),
              const SizedBox(height: 14),
              _SocialButton(
                icon: Icons.apple,
                text: "Continue with Apple",
                onTap: () {},
              ),
              const SizedBox(height: 20),

              const Text(
                "( Or )",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),

              _GradientButton(
                text: "Sign In with Your Account",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                  );
                },
              ),

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have an Account? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignUpScreen()),
                      );
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Color(0xFF3A8DFF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------- SIGN IN ----------------

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    // Image.asset('assets/LOGO.png', height: 80),
                    const SizedBox(height: 10),
                    const Text(
                      "EDUPRO",
                      style: TextStyle(
                        color: Color(0xFF3A2E8A),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "LEARN FROM HOME",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Let’s Sign In.!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1B1D3A),
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "Login to Your Account to Continue your Courses",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 30),

              const _InputField(hint: "Email", icon: Icons.email_outlined),
              const SizedBox(height: 20),
              const _InputField(
                hint: "Password",
                icon: Icons.lock_outline,
                isPassword: true,
              ),

              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (v) {}),
                      const Text("Remember Me"),
                    ],
                  ),
                  const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.teal),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              _GradientButton(
                text: "Sign In",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),

              const SizedBox(height: 30),
              const Center(
                child: Text(
                  "Or Continue With",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _SocialCircle(icon: Icons.g_mobiledata),
                  SizedBox(width: 20),
                  _SocialCircle(icon: Icons.apple),
                ],
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have an Account? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignUpScreen()),
                      );
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Color(0xFF3A8DFF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------- SIGN UP ----------------

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    // Image.asset('assets/logo.png', height: 80),
                    const SizedBox(height: 10),
                    const Text(
                      "EDUPRO",
                      style: TextStyle(
                        color: Color(0xFF3A2E8A),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "LEARN FROM HOME",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Getting Started.!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1B1D3A),
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "Create an Account to Continue your all Courses",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 30),

              const _InputField(hint: "Email", icon: Icons.email_outlined),
              const SizedBox(height: 20),
              const _InputField(
                hint: "Password",
                icon: Icons.lock_outline,
                isPassword: true,
              ),
              const SizedBox(height: 10),

              Row(
                children: [
                  Checkbox(value: true, onChanged: (v) {}),
                  const Text("Agree to Terms & Conditions"),
                ],
              ),
              const SizedBox(height: 20),

              _GradientButton(
                text: "Sign Up",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),

              const SizedBox(height: 30),
              const Center(
                child: Text(
                  "Or Continue With",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _SocialCircle(icon: Icons.g_mobiledata),
                  SizedBox(width: 20),
                  _SocialCircle(icon: Icons.apple),
                ],
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an Account? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                      "SIGN IN",
                      style: TextStyle(
                        color: Color(0xFF3A8DFF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------- REUSABLE WIDGETS ----------------

class _InputField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isPassword;
  const _InputField({
    required this.hint,
    required this.icon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon, color: Colors.grey),
        suffixIcon:
            isPassword ? const Icon(Icons.visibility_off_outlined) : null,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class _GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const _GradientButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: kGradient,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 6),
            const CircleAvatar(
              radius: 14,
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_forward, color: Color(0xFF3A8DFF)),
            ),
          ],
        ),
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  const _SocialButton({
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextButton.icon(
        onPressed: onTap,
        icon: Icon(icon, color: Colors.black, size: 26),
        label: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}

class _SocialCircle extends StatelessWidget {
  final IconData icon;
  const _SocialCircle({required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.white,
      child: Icon(icon, color: Colors.black, size: 28),
    );
  }
}

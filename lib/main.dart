import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Portfolio - ITP107',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8F5FC),
      ),
      home: PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  PortfolioScreen({super.key});

  final String studentName = "Yeshabelle Olango";
  final String studentNumber = "2404124";
  final String section = "3 IT-B";
  final String professorName = "PROF. ALBERT Q. ALFORJA";

  // Single Tap
  void _onSingleTap() {
    final now = DateTime.now();
    final date =
        "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";
    print("===== SINGLE TAP =====");
    print("Current Examination Date: $date");
    print("======================");
  }

  // Double Tap
  void _onDoubleTap() {
    print("===== DOUBLE TAP =====");
    print("Professor: $professorName");
    print("======================");
  }

  // Long Press
  void _onLongPress() {
    print("===== LONG PRESS =====");
    print("Student Name: $studentName");
    print("======================");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Personal Portfolio",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple.shade700,
        foregroundColor: Colors.white,
        elevation: 4,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 40,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Profile Picture (Updated with mike.jpg)
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.purple.shade100,
                      border: Border.all(
                        color: Colors.purple.shade700,
                        width: 3,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/mike.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Name
                  Text(
                    studentName,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple.shade800,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    "Student No: $studentNumber",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade700,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    "Section: $section",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade700,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // ===== CLICK ME BUTTON (INSIDE THE CARD) =====
                  GestureDetector(
                    onTap: _onSingleTap,
                    onDoubleTap: _onDoubleTap,
                    onLongPress: _onLongPress,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 48,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade700,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.purple.withOpacity(0.4),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: const Text(
                        "Click Me",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
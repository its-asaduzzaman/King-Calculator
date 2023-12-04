import 'package:flutter/material.dart';
import 'package:kingcalculator/Screens/bmi_calculator_page.dart';
import 'package:kingcalculator/Utils/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                "Fitness",
                style: Styles.headLineStyle1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BMICalculatorScreen()),
                );
              },
              child: Text(
                "BMI Calculator",
                style: Styles.headLineStyle4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

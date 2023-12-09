import 'package:flutter/material.dart';
import 'package:kingcalculator/Utils/app_style.dart';

enum GanderGroup { male, female }

class BMICalculatorScreen extends StatefulWidget {
  const BMICalculatorScreen({Key? key}) : super(key: key);

  @override
  State<BMICalculatorScreen> createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  final GanderGroup _value = GanderGroup.male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Center(
                child: Text(
                  "Bmi Calculator",
                  style: Styles.headLineStyle1,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Styles.calculationBgColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      // Age Section
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Text(
                              "Age ",
                              style: Styles.headLineStyle2,
                            ),
                            Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 3),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                      color: Styles.borderSideColor, width: 5),
                                ),
                              ),
                            )),
                            Text(
                              "  age: 2 - 120",
                              style: Styles.headLineStyle2,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Gender Section
                      Row(
                        children: [
                          // Text(
                          //   "Gender",
                          //   style: Styles.headLineStyle2,
                          // ),
                          Expanded(
                            child: RadioListTile(
                                value: GanderGroup.male,
                                title: Text(
                                  "Male",
                                  style: Styles.headLineStyle3,
                                ),
                                groupValue: _value,
                                onChanged: (_) {}),
                          ),
                          Expanded(
                            child: RadioListTile(
                                value: GanderGroup.male,
                                title: Text(
                                  "Female",
                                  style: Styles.headLineStyle3,
                                ),
                                groupValue: _value,
                                onChanged: (_) {}),
                          ),
                        ],
                      ),
                      // Height Section
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Text(
                              "Height ",
                              style: Styles.headLineStyle2,
                            ),
                            Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 3),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                      color: Styles.borderSideColor, width: 5),
                                ),
                              ),
                            )),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 3),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                      color: Styles.borderSideColor, width: 5),
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                      // Weight Section
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Text(
                              "Weight ",
                              style: Styles.headLineStyle2,
                            ),
                            Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 3),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                      color: Styles.borderSideColor, width: 5),
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Styles.buttonColor,
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Calculate",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.play_circle,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ],
                              ),
                            ),
                          ),


                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 60,
                            width: 100,
                            decoration: const BoxDecoration(
                              color:Colors.grey,
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Clear",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                child: Text(
                  'BMI introduction',
                  style: Styles.headLineStyle2,
                ),
              ),
              SizedBox(
                height: 350,
                child: Text(
                  "BMI is a measurement of a person's leanness or corpulence based on their height and weight, and is intended to quantify tissue mass. It is widely used as a general indicator of whether a person has a healthy body weight for their height. Specifically, the value obtained from the calculation of BMI is used to categorize whether a person is underweight, normal weight, overweight, or obese depending on what range the value falls between. These ranges of BMI vary based on factors such as region and age, and are sometimes further divided into subcategories such as severely underweight or very severely obese. Being overweight or underweight can have significant health effects, so while BMI is an imperfect measure of healthy body weight, it is a useful indicator of whether any additional testing or action is required. Refer to the table below to see the different categories based on BMI that are used by the calculator.",
                  style: Styles.headLineStyle5,
                ),
              ),
              SizedBox(
                height: 40,
                child: Text(
                  'BMI table for adults',
                  style: Styles.headLineStyle2,
                ),
              ),
              SizedBox(
                height: 100,
                child: Text(
                  "This is the World Health Organization's (WHO) recommended body weight based on BMI values for adults. It is used for both men and women, age 20 or older.",
                  style: Styles.headLineStyle5,
                ),
              ),
              SizedBox(
                height: 300,
                child: Container(
                  padding: const EdgeInsets.all(10.00),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/bmiimage.jpg"),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.brown,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                child: Text(
                  'BMI chart for adults',
                  style: Styles.headLineStyle2,
                ),
              ),
              SizedBox(
                height: 90,
                child: Text(
                  "This is a graph of BMI categories based on the World Health Organization data. The dashed lines represent subdivisions within a major categorization.",
                  style: Styles.headLineStyle5,
                ),
              ),
              SizedBox(
                height: 400,
                child: Container(
                  padding: const EdgeInsets.all(10.00),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/bmichartimage.jpg"),
                      fit: BoxFit.fitHeight,
                    ),
                    color: Colors.brown,
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

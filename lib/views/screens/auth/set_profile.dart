import 'package:flutter/material.dart';
import 'package:flutter_application_69/constants.dart';
//import 'package:numberpicker/numberpicker.dart';
import 'package:flutter_application_69/views/screens/auth/sign_up.dart';

class UserDataPage extends StatefulWidget {
  const UserDataPage({Key? key}) : super(key: key);

  @override
  State<UserDataPage> createState() => _UserDataPageState();
}

class _UserDataPageState extends State<UserDataPage> {
  int age = 25;
  int weight = 70;
  int height = 175;

  void updateAge(int newValue) {
    setState(() {
      age = newValue.clamp(10, 60); // Clamp value to the desired range
    });
  }

  void updateWeight(int newValue) {
    setState(() {
      weight = newValue.clamp(10, 60);
    });
  }

  void updateHeight(int newValue) {
    setState(() {
      height = newValue.clamp(100, 200); // Adjust range for height (100-200)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Title
            Text(
              'Tell Us About Yourself',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            // Age section
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('How Old Are You?'),
                Text('$age'),
                const SizedBox(width: 10.0), // Add space for scroll bar
                Scrollbar(
                  child: Slider(
                    value: age.toDouble(),
                    min: 10.0,
                    max: 60.0,
                    divisions: 50, // More divisions for finer control
                    label: age.toString(),
                    onChanged: (value) => updateAge(value.toInt()),
                  ),
                ),
              ],
            ),

            // Similar sections for weight and height
            // Adjust min/max and label formatting as needed
            // Back and continue buttons
            const SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisSize.min, // Adjust alignment as needed
              children: [
                SizedBox(
                  width: 150.0,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SignupScreen()), // Navigate to SignupPage
                      );
                    },
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'Back',
                      style: TextStyle(
                          color: text,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: backbtncolor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 150.0,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle back button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const UserDataPage()), // Navigate to SignupPage
                      );
                    },
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                          color: text,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: buttonColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

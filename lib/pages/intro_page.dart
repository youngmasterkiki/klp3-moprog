import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectfinal/components/button.dart';
import 'package:projectfinal/themes/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            const SizedBox(height: 25,),

            // shop name
            Text(
              "FAST PATTY", 
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),

            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/burger.png'),
            ),

            const SizedBox(height: 25),  

            // title
            Text(
              "Experience the harmony of flavors in our Grilled Cheese Burger!",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),

            // subtitle
            const Text(
              "Feel the taste of the most popular Fast Food from anywhere and anytime",
              style: TextStyle(
                color: Colors.white,
                height: 2,
              ),
            ),

            const SizedBox(height: 25),

            // get started button
            MyButton(
              text: "Get started",
              onTap: () {
                // go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            )
            ],
          ),
        ),
      ),
    );
  }
}
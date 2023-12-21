import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopify/res/colors.dart';
import 'package:shopify/res/components/elevated_button.dart';
import 'package:shopify/view/login/widgets/textform_widget.dart';
import 'package:shopify/view/signup/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          child: Image.asset(
            "assets/images/auth screen.jpg",
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 48, left: 10),
          child: Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                "Welcome Back",
                style: GoogleFonts.rubikBurned(
                    textStyle: const TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 246, 156, 30),
                )),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                Text(
                  "Login",
                  style: GoogleFonts.cinzel(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                const TextFormWidget(
                  hintText: "Enter your email",
                  prefixIcon: Icons.email,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const TextFormWidget(
                  hintText: "Enter your password",
                  prefixIcon: Icons.lock,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                ElevatedButtonWidget(
                  onPress: () {},
                  text: "Login",
                  bgColor: mainColor,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "or login with",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: whiteColor,
                            ),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/google.jpg',
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const Text(
                        "Not an User?",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.cinzel(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: blackColor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

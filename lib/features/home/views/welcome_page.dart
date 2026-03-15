import 'package:coffee_shop/core/constants/image_constatnts.dart';
import 'package:coffee_shop/core/shared/buttons.dart';
import 'package:coffee_shop/core/shared/custom_animation.dart';
import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:coffee_shop/features/home/views/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    child: Image.asset(MyAppImage.welcome, fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(flex: 5, child: Container()),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black,
                          Colors.black,
                        ],
                      ),
                    ),
                    child: DownToTop(
                      milliseconds: 5000,
                      child: Column(
                        children: [
                          Text(
                            "Fall in Love with\nCoffee in Blissful Delight!",
                            style: TextStyle(
                              fontSize: 36,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                            style: TextStyle(
                              fontSize: 14,
                              color: MyAppTheme.subtitleText,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Expanded(
                                child: MyGeneralButton(
                                  text: "Get Started",
                                  onPressed: () {
                                    Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ),
                                      (context) => false,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

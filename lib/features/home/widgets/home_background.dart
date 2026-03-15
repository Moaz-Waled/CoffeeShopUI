import 'package:coffee_shop/core/shared/custom_animation.dart';
import 'package:flutter/material.dart';

class HomeBackGround extends StatelessWidget {
  const HomeBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: TopToDown(
              milliseconds: 1000,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff111111), Color(0xff313131)],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: DownToTop(milliseconds: 1000, child: Container()),
          ),
        ],
      ),
    );
  }
}

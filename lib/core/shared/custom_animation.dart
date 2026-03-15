import 'package:flutter/material.dart';

class DownToTop extends StatelessWidget {
  final int? milliseconds;
  final Widget child;
  const DownToTop({super.key, required this.child, this.milliseconds});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Offset>(
      tween: Tween(begin: Offset(0, 1), end: Offset.zero),
      duration: Duration(milliseconds: milliseconds ?? 1500),
      curve: Curves.easeOut,
      builder: (context, offset, child) {
        return Transform.translate(
          offset: Offset(0, offset.dy * 100),
          child: Opacity(opacity: 1 - offset.dy.abs(), child: child),
        );
      },
      child: child,
    );
  }
}

class TopToDown extends StatelessWidget {
  final int? milliseconds;
  final Widget child;
  const TopToDown({super.key, required this.child, this.milliseconds});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Offset>(
      tween: Tween(begin: Offset(0, -1), end: Offset.zero),
      duration: Duration(milliseconds: milliseconds ?? 1500),
      curve: Curves.easeOut,
      builder: (context, offset, child) {
        return Transform.translate(
          offset: Offset(0, offset.dy * 100),
          child: Opacity(opacity: 1 - offset.dy.abs(), child: child),
        );
      },
      child: child,
    );
  }
}

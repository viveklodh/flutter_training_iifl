import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxResponsiveExample extends GetResponsiveView {
  ///
@override
  Widget? phone() {
    return MobileView();
  }
  ///
  @override
  Widget? tablet() {
    return TabletView();
  }
  ///
  @override
  Widget? desktop() {
    return DesktopView();
  }



}

class MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Center(
        child: Text(
          'Mobile View',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

class TabletView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: Center(
        child: Text(
          'Tablet View',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Text(
          'Desktop View',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}



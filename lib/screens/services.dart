import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navdrawer.dart';

class ServicesProvides extends StatelessWidget {
  static const String routeName  = '/services';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer:  NavDrawer(),
      appBar: new AppBar(
        title: new Text('Our Services'),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/pg_1.png'),
            Image.asset('assets/images/pg_2.png'),
          ],
        ),
      )
    );
  }
}

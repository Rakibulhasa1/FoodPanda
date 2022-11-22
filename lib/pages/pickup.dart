// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:getx/pages/food_delivary.dart';

class PickUp extends StatelessWidget {
  const PickUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color.fromRGBO(215, 19, 101, 1),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shop))],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pick up',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              'Gopalgonj',
              style: TextStyle(fontSize: 11),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ListView(
          children: [
            customcontainer(
                title: 'Dellas Cafe & Restuarnt',
                subtitle: 'Asia hotel & resort, chittagong',
                picture: 'assets/images/baff89faa8d8d39ba912d847ef83833b.jpg',
                buttontime: '24 min',
                rating: '3.6(1000+)'),
            customcontainer(
                title: 'Dellas Cafe & Restuarnt',
                subtitle: 'Asia hotel & resort, chittagong',
                picture: 'assets/images/baff89faa8d8d39ba912d847ef83833b.jpg',
                buttontime: '24 min',
                rating: '3.6(1000+)'),
            customcontainer(
                title: 'Dellas Cafe & Restuarnt',
                subtitle: 'Asia hotel & resort, chittagong',
                picture: 'assets/images/baff89faa8d8d39ba912d847ef83833b.jpg',
                buttontime: '24 min',
                rating: '3.6(1000+)'),
            customcontainer(
                title: 'Dellas Cafe & Restuarnt',
                subtitle: 'Asia hotel & resort, chittagong',
                picture: 'assets/images/baff89faa8d8d39ba912d847ef83833b.jpg',
                buttontime: '24 min',
                rating: '3.6(1000+)'),
            customcontainer(
                title: 'Dellas Cafe & Restuarnt',
                subtitle: 'Asia hotel & resort, chittagong',
                picture: 'assets/images/baff89faa8d8d39ba912d847ef83833b.jpg',
                buttontime: '24 min',
                rating: '3.6(1000+)'),
            customcontainer(
                title: 'Dellas Cafe & Restuarnt',
                subtitle: 'Asia hotel & resort, chittagong',
                picture: 'assets/images/baff89faa8d8d39ba912d847ef83833b.jpg',
                buttontime: '24 min',
                rating: '3.6(1000+)'),
          ],
        ),
      ),
    );
  }
}

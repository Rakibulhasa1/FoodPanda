// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: Color.fromRGBO(215, 19, 101, 1),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shop))],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selected Location',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                'Gopalgonj',
                style: TextStyle(fontSize: 11),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 10,
                decoration: BoxDecoration(
                    //  color: Color.fromRGBO(215, 19, 101, 0.1),
                    ),
              ),
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      //  color: Color.fromRGBO(215, 19, 101, 0.1),
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 8),
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(215, 19, 101, 0.1),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search for shops & restuarents',
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                )
              ]),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                color: Color.fromRGBO(215, 19, 101, 0.2),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Welcome to foodpanda! Use code YUMPANDA to get TK 80 off on your first food order over TK 299',
                    style: TextStyle(
                      color: Color.fromRGBO(215, 19, 101, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 150,
                        width: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/Watsons-CNY-Promotion-on-FoodPanda-Shops.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 150,
                        width: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/FoodPanda-Shops-October-Sale-8-350x350.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('All Restaurants',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {},
                child: customcontainer(
                    title: 'Dellas Cafe & Restuarnt',
                    subtitle: 'Asia hotel & resort, chittagong',
                    picture:
                        'assets/images/baff89faa8d8d39ba912d847ef83833b.jpg',
                    buttontime: '24 min',
                    rating: '3.6(1000+)'),
              ),
              SizedBox(
                height: 10,
              ),
              customcontainer(
                  title: 'Manipura Restuarnt',
                  subtitle: 'Asia hotel & resort, dhaka',
                  picture:
                      'assets/images/restaurant-interior-design-for-free-software-restaurants.jpg',
                  buttontime: '32 min',
                  rating: '4.6(500+)'),
              SizedBox(
                height: 10,
              ),
              customcontainer(
                  title: 'The Spice Factory',
                  subtitle: 'Asia hotel & resort, dhaka',
                  picture: 'assets/images/manipuramain-2-1.png',
                  buttontime: '34 min',
                  rating: '4.2(100+)'),
              SizedBox(
                height: 10,
              ),
              customcontainer(
                  title: 'The Naan House',
                  subtitle: 'Asia hotel & resort, dhaka',
                  picture: 'assets/images/1591806332.jpg',
                  buttontime: '34 min',
                  rating: '4.2(100+)'),
            ],
          ),
        ));
  }
}

class customcontainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picture;
  final String buttontime;
  final String rating;

  const customcontainer({
    Key? key,
    required this.title,
    required this.buttontime,
    required this.rating,
    required this.subtitle,
    required this.picture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Stack(children: [
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  picture,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              left: 10,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, shape: StadiumBorder()),
                  onPressed: () {},
                  child: Text(
                    buttontime,
                    style: TextStyle(color: Color.fromRGBO(215, 19, 101, 1)),
                  )),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 5, right: 10),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(child: Container()),
              Icon(
                Icons.star,
                color: Color.fromRGBO(215, 19, 101, 1),
              ),
              Text(rating, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Row(
            children: [
              Text(
                subtitle,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Row(
            children: [
              Icon(
                Icons.directions_bike,
                color: Color.fromRGBO(215, 19, 101, 1),
              ),
              SizedBox(
                width: 8,
              ),
              Text('Free Delivery',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(215, 19, 101, 1))),
            ],
          ),
        )
      ],
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/dinein.dart';
import 'package:getx/pages/food_delivary.dart';
import 'package:getx/pages/pickup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: false,
      //   backgroundColor: Color.fromRGBO(215, 19, 101, 1),
      //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shop))],
      //   title: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         'Selected Location',
      //         style: TextStyle(fontSize: 15),
      //       ),
      //       Text(
      //         'Gopalgonj',
      //         style: TextStyle(fontSize: 11),
      //       ),
      //     ],
      //   ),
      // ),
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          pinned: false,
          floating: true,
          expandedHeight: 120,
          centerTitle: false,
          backgroundColor: Color.fromRGBO(215, 19, 101, 1),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shop))],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Selected Location', style: TextStyle(fontSize: 15)),
              Text('Gopalgonj', style: TextStyle(fontSize: 11)),
            ],
          ),
          flexibleSpace: FlexibleSpaceBar(title: searchbox()),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 8),
            child: Card(
              elevation: 5,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FoodDelivery()));
                },
                child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, top: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Food Delivery',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Best deals on your favourites!',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w300),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: Image.asset('assets/images/foodpan2.png'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
            child: Row(
              children: [
                Expanded(
                  //  flex: 2,
                  child: Card(
                    elevation: 5,
                    child: Container(
                      height: 210,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Food Delivery',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Best deals on your favourites!',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  child: Image.asset(
                                      'assets/images/Delivery-PNG-Image.png'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PickUp()));
                        },
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pick-up',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Takeaway in 15 mins',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: Image.asset(
                                          'assets/images/33bfd6d89a289ec7d37f06cd90b79109.png'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(DineIn());
                        },
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dine-in',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Eat out and save 25% ',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: Image.asset(
                                          'assets/images/junk-food-archives-classic-0.png'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your daily deals',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: InkWell(
                          onTap: () {
                            // Get.bottomSheet(
                            //   Container(
                            //       height: 150,
                            //       color: Colors.greenAccent,
                            //       child: Column(
                            //         children: [
                            //           Text('Hii 1', textScaleFactor: 2),
                            //           Text('Hii 2', textScaleFactor: 2),
                            //           Text('Hii 3', textScaleFactor: 2),
                            //           Text('Hii 4', textScaleFactor: 2),
                            //         ],
                            //       )),
                            //   // barrierColor: Colors.red[50],
                            //   // isDismissible: false,
                            //   // shape: RoundedRectangleBorder(
                            //   //     borderRadius: BorderRadius.circular(35),
                            //   //     side: BorderSide(
                            //   //         width: 5, color: Colors.black)),
                            //   // enableDrag: false,
                            // );
                          },
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            width: 140,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/edm-foodpanda.jpg',
                                fit: BoxFit.fill,
                              ),
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
                              'assets/images/Foodpanda-70-off-Promo.jpg',
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
      drawer: SafeArea(
        child: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromRGBO(215, 19, 101, 1)),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(),
                accountName: Text(
                  "Rakibul Hasan Joy",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("rhj281@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "R",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        )),
      ),
    );
  }
}

class searchbox extends StatelessWidget {
  const searchbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 8),
      child: Container(
        height: 30,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Search for shops',
              hintStyle: TextStyle(fontSize: 14),
              prefixIcon: Icon(
                Icons.search,
                size: 18,
              ),
              border: InputBorder.none),
        ),
      ),
    );
  }
}

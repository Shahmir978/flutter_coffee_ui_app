import 'package:flutter/material.dart';
import 'package:flutter_coffee_ui_app/Components/make_coffeeCategory.dart';
import 'package:flutter_coffee_ui_app/Components/make_singleCoffee.dart';

class Home_Page extends StatefulWidget {
  Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0c0f14),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.05,
                      width: size.height * 0.05,
                      decoration: BoxDecoration(
                        color: Color(0xff141921),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        Icons.grid_view_rounded,
                        color: Color(0xff4d4f52),
                        size: 20,
                      ),
                    ),
                    Container(
                      height: size.height * 0.05,
                      width: size.height * 0.05,
                      decoration: BoxDecoration(
                        color: Color(0xff141921),
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/profile.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Find the best",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "coffee for you",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff52555a),
                    ),
                    hintText: "Find Your Coffee...",
                    hintStyle: TextStyle(
                      color: Color(0xff52555a),
                    ),
                    fillColor: Color(0xff141921),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    make_coffeeCategory(
                      categoryName: "Cappuccino",
                      isSelected: true,
                    ),
                    make_coffeeCategory(
                      categoryName: "Espresso",
                      isSelected: false,
                    ),
                    make_coffeeCategory(
                      categoryName: "Latte",
                      isSelected: false,
                    ),
                    make_coffeeCategory(
                      categoryName: "Espresso",
                      isSelected: false,
                    ),
                    make_coffeeCategory(
                      categoryName: "Cappuccino",
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Expanded(
                  child: Row(
                    children: [
                      make_singleCoffee(
                        // context: context,
                        images: "assets/images/coffee1.jpeg",
                        title: "Cappuccino",
                        subTitle: "With Oat Milk",
                        price: '4.20',
                        rating: '4.5',
                      ),
                      make_singleCoffee(
                        // context: context,
                        images: "assets/images/coffee8.jpeg",
                        title: "Cappuccino",
                        subTitle: "With Chocolate",
                        price: '3.14',
                        rating: '4.5',
                      ),
                      make_singleCoffee(
                        // context: context,
                        images: "assets/images/coffee2.jpeg",
                        title: "Cappuccino",
                        subTitle: "With Chocolate",
                        price: '3.14',
                        rating: '4.5',
                      ),
                      make_singleCoffee(
                        images: "assets/images/coffee4.jpeg",
                        title: "Cappuccino",
                        subTitle: "With Chocolate",
                        price: '3.14',
                        rating: '4.5',
                      ),
                      make_singleCoffee(
                        // context: context,
                        images: "assets/images/coffee5.jpeg",
                        title: "Cappuccino",
                        subTitle: "With Chocolate",
                        price: '3.14',
                        rating: '4.5',
                      ),
                      make_singleCoffee(
                        // context: context,
                        images: "assets/images/coffee6.jpeg",
                        title: "Cappuccino",
                        subTitle: "With Chocolate",
                        price: "3.14",
                        rating: '4.5',
                      ),
                      make_singleCoffee(
                        // context: context,
                        images: "assets/images/coffee7.jpeg",
                        title: "Cappuccino",
                        subTitle: "With Chocolate",
                        price: '3.14',
                        rating: '4.5',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ListTile(
                  leading: Text(
                    "Special for you",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Stack(alignment: Alignment.topRight, children: [
                Container(
                  padding: EdgeInsets.all(12.0),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: MediaQuery.of(context).size.height * 0.2 - 20,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff171b22),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2.0,
                                spreadRadius: 1.0,
                                color: Color(0xff30221f),
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/coffee3.jpeg",
                              ),
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "5 Coffee Beans you\n Must Try!",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "With Oat Milk",
                              style: TextStyle(
                                color: Color(0xffaeaeae),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "\$\t",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffd17842),
                                      ),
                                    ),
                                    Text(
                                      "4.20",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffd17842),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Icon(Icons.add,
                                      size: 30, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  height: 25.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xff231715),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Color(0xffd17842),
                      ),
                      Text(
                        "4.5",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

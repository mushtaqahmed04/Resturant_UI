import 'package:flutter/material.dart';
import 'package:resturant/constant.dart';
import 'package:resturant/helpcenter.dart';
import 'package:resturant/homescreen.dart';
import 'package:resturant/newaccountscreen.dart';
import 'package:resturant/signupscreen.dart';

class Bestseller extends StatelessWidget {
  const Bestseller({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  height: 170,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Signupscreen();
                          }));
                        },
                        child: Image.asset(
                          "assets/images/Back icon Arrow.png",
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Best Seller",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                WhiteBox(),
              ],
            ),
          ),
          BottomSheet(),
        ],
      ),
    );
  }
}

// White Box decoration design

class WhiteBox extends StatelessWidget {
  const WhiteBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18, right: 30, left: 30),
      height: 810,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Discover our most popular dishes!",style: TextStyle(color: AppColors.orange,fontSize: 17,fontWeight: FontWeight.bold)),
            GRid(),
          ],
        ),
      ),
    );
  }
}

class GRid extends StatelessWidget {
  GRid({super.key});

  final List<Map<String, dynamic>> GridMap = [
    {
      "images": "assets/images/Rectangle 128s.png",
    },
    {
      "images": "assets/images/Rectangle 129.png",
    },
    {
      "images": "assets/images/Rectangle 130.png",
    },
    {
      "images": "assets/images/Rectangle 131.png",
    },
    {
      "images": "assets/images/Rectangle 132.png",
    },
    {
      "images": "assets/images/Rectangle 133 (1).png",
    }
  ];

  final List<Map<String, dynamic>> Love = [
    {
      "images": "assets/images/Favorites-Orange.png",
    },
    {
      "images": "assets/images/Favorites-Orange.png",
    },
    {
      "images": "assets/images/Favorites-Orange.png",
    },
    {
      "images": "assets/images/Favorites-Orange.png",
    },
    {
      "images": "assets/images/Favorites-Orange.png",
    },
    {
      "images": "assets/images/Favorites-Orange.png",
    },
  ];

    final List<Map<String, dynamic>> catagory = [
    {
      "images": "assets/images/bot-small-Snacks (1).png",
    },
    {
      "images": "assets/images/bot-small-Snacks (1).png",
    },
    {
      "images": "assets/images/bot-small-Meals.png",
    },
    {
      "images": "assets/images/bot-small-Vegan.png",
    },
    {
      "images": "assets/images/bot-small-Drinks.png",
    },
    {
      "images": "assets/images/bot-small-Desserts.png",
    },
  ];

    final List<Map<String, dynamic>> pricetag = [
    {
      "images": "assets/images/Frame 69.png",
    },
    {
      "images": "assets/images/Frame 70.png",
    },
    {
      "images": "assets/images/Frame 69.png",
    },
    {
      "images": "assets/images/Frame 70.png",
    },
    {
      "images": "assets/images/Frame 69.png",
    },
    {
      "images": "assets/images/Frame 70.png",
    },
  ];

    final List<Map<String, dynamic>> ratting = [
    {
      "images": "assets/images/Frame 47.png",
    },
    {
      "images": "assets/images/Frame 71 (1).png",
    },
    {
      "images": "assets/images/Frame 73.png",
    },
    {
      "images": "assets/images/Frame 75.png",
    },
    {
      "images": "assets/images/Frame 73.png",
    },
    {
      "images": "assets/images/Frame 75.png",
    },
  ];

    final List<Map<String, dynamic>> price = [
    {
      "images": "assets/images/Cart icon.png",
    },
    {
      "images": "assets/images/Cart icon.png",
    },
    {
      "images": "assets/images/Cart icon.png",
    },
    {
      "images": "assets/images/Cart icon.png",
    },
    {
      "images": "assets/images/Cart icon.png",
    },
    {
      "images": "assets/images/Cart icon.png",
    },
  ];

   final List<Map<String, dynamic>> title = [
    {
      "Title": "Sunny \nBruschetta",
    },
    {
      "Title": "Gourmet \nGrilled",
    },
    {
      "Title": "Barbecue \ntacos",
    },
    {
      "Title": "Broccoli \nlasagna",
    },
    {
      "Title": "Sunny \nBruschetta",
    },
    {
      "Title": "Sunny \nBruschetta",
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          mainAxisExtent: 210),
      itemCount: GridMap.length,
      itemBuilder: (_, index) {
        return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Text("data"),
                    Image.asset(
                      "${GridMap.elementAt(index)["images"]}",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 118),
                      child: Image.asset("${Love.elementAt(index)["images"]}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: Image.asset("${catagory.elementAt(index)["images"]}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 95,left: 102),
                      child: Image.asset("${pricetag.elementAt(index)["images"]}"),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 110),
                        child: Image.asset("${ratting.elementAt(index)["images"]}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 42,left: 120),
                        child: Image.asset("${price.elementAt(index)["images"]}"),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Text(
                              "${title.elementAt(index)["Title"]}",style: TextStyle(fontWeight: FontWeight.bold,height: 1),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Lorem ipsum dolor sit amet sads fasds.",style: TextStyle(fontSize: 10),),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ));
      },
    );
  }
}

class TextField1 extends StatelessWidget {
  const TextField1({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "example@example.com",

        labelStyle: TextStyle(fontSize: 24),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(12),
        //   borderSide: BorderSide(
        //   color: AppColors.lightyellow,
        //   )
        // ),
        fillColor: AppColors.lightyellow,
        filled: true,
      ),
    );
  }
}

class TextField2 extends StatelessWidget {
  const TextField2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "*****************",

            labelStyle: TextStyle(fontSize: 24),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(12),
            //   borderSide: BorderSide(
            //   color: AppColors.lightyellow,
            //   )
            // ),
            fillColor: AppColors.lightyellow,
            filled: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 245, top: 12),
          child: Container(
              height: 22,
              width: 22,
              child: Image.asset("assets/images/Show Off.png")),
        )
      ],
    );
  }
}

class Logintextbutton extends StatelessWidget {
  const Logintextbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 40,
          width: 180,
          decoration: BoxDecoration(
              color: AppColors.orange, borderRadius: BorderRadius.circular(20)),
          child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Newaccountscreen();
                }));
              },
              child: Text(
                "Log In",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              )),
        ));
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 750),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          color: AppColors.orange,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Homescreen();
                  }));
                },
                child: Image.asset("assets/images/Home Icon.png", height: 25)),
            Image.asset("assets/images/fav.png", height: 25),
            Image.asset("assets/images/Heart Icon.png", height: 25),
            InkWell(
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Newaccountscreen();
                  }));
                },
                child: Image.asset("assets/images/bot-list.png", height: 30)),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Newaccountscreen();
                  }));
                },
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HelpCenter();
                    }));
                  },
                  child: Image.asset("assets/images/Headphones icon.png",
                      height: 35),
                )),
          ],
        ),
      ),
    );
  }
}

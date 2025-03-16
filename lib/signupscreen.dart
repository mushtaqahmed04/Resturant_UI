import 'package:flutter/material.dart';
import 'package:resturant/constant.dart';
import 'package:resturant/homescreen.dart';
import 'package:resturant/loginscreen.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset("assets/images/Rectangle 145.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 290),
            child: InkWell(
              onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Homescreen();
                }));
              },
              child: Text(
                "Skip  >",
                style: TextStyle(
                    color: Color.fromRGBO(233, 84, 34, 1),
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    fontFamily: "LeagueSpartan"),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 325,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        "assets/images/Transfer Document icon.png",
                        height: 40,
                        width: 40,
                      ),
                    ),
                    Text(
                      "Order For Food",
                      style: TextStyle(
                        color: Color.fromRGBO(233, 84, 34, 1),
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Container(
                            height: 50,
                            width: 230,
                            child: Text(
                              "Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor.",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(233, 84, 34, 1),
                                  height: 1),
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ),
                    nexttextbutton(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class nexttextbutton extends StatelessWidget {
  const nexttextbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 40,
          width: 125,
          decoration: BoxDecoration(
              color: AppColors.orange, borderRadius: BorderRadius.circular(20)),
          child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Loginscreen();
                }));
              },
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white),
              )),
        ));
  }
}

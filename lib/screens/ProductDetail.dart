import 'package:flutter/material.dart';
import 'dart:math';

import 'package:schoolassignment/screens/order.dart';

class Product_Detail_screen extends StatelessWidget {
  Product_Detail_screen(
      this.name, this.ingredient, this.image, this.price, this.discount)
      : super();

  final String name;
  final String ingredient;
  final String image;
  final String price;
  final String discount;

  Discount(String discountstatus) {
    if (discountstatus == "On Discount") {
      int random = Random().nextInt(100).round() + 1;
      if(random >= 70 && random <= 100){
        random = 70;
      }else if(random >= 50 && random <= 69){
        random = 50;
      }
      else{
        random = 10;
      }
      return random.toString();
    }
    else{
      return "false";
    }
  }

  DiscountChecker(String discountonoff) {
    if (discountonoff == "On Discount") {
      return Colors.teal;
    } else {
      return Colors.red;
    }
  }

  @override
  String generatedDiscount = "";
  Widget build(BuildContext context) {
    congratDialog(String discountamount){
      return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Center(child: Text("Congratulation")),
            content: Text(
              " You won $discountamount % Discount. This will be applied when you order this item.",
              style: TextStyle(fontSize: 20),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>  order_screen(name, ingredient, image, price, discount, generatedDiscount)));
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    color: Colors.teal,
                    child: Center(
                      child: Text(
                        "OK",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  )),
            ],
          ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Detail')),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
        child: Center(
          child: Container(
            width: 350.0,
            height: 500.0,
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Image.asset("images/" + image),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    "Ingredients:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    ingredient,
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Price :",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        child: Text(
                          "MMK " + price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Discount?:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        color: DiscountChecker(discount),
                        child: Text(
                          discount,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                GestureDetector(
                  onTap: () {
                    generatedDiscount = Discount(discount);
                    if(generatedDiscount != "false"){
                      congratDialog(generatedDiscount);
                    }
                    else{
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>  order_screen(name, ingredient, image, price, discount, generatedDiscount)));
                    }

                  },
                  child: Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                        child: Text(
                      "Order " + name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

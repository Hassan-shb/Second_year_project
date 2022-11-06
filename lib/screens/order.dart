import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'checkout.dart';

class order_screen extends StatefulWidget {
  const order_screen(this.oname, this.oingredient, this.oimage, this.oprice,
      this.odiscount, this.ogenerateddiscount)
      : super();

  final String oname;
  final String oingredient;
  final String oimage;
  final String oprice;
  final String odiscount;
  final String ogenerateddiscount;

  @override
  _order_screenState createState() => _order_screenState();
}

class _order_screenState extends State<order_screen> {
  discountChecker(String discount) {
    if (discount == "false") {
      return "No Discount";
    } else {
      return "$discount % off";
    }
  }

  discountPrice(String price, String discount) {
    if (discount == "false") {
      return "No Offer";
    } else {
      result = int.parse(price) * (int.parse(discount) / 100);
      return "MMK $result";
    }
  }

  amountCalculator(String price, int quantity) {
    return (int.parse(price) * quantity).toString();
  }

  colorChanger(String changer) {
    if (changer == "No Discount") {
      return Colors.red;
    } else {
      return Colors.teal;
    }
  }

  totalAmountCalculator(String price, String discount) {
    if (discount == "false") {
      totalamountNoDiscount = int.parse(price) * quantity;
      return "Total Amount (No Discount) MMK " + totalamountNoDiscount.toString();
    } else {
      B4totalAmount = int.parse(price) * (int.parse(discount) / 100);
      totalAmount = (int.parse(price) - B4totalAmount) * quantity;
      return "Total Amount (After Discount) MMK " + totalAmount.toString();
    }
  }

  totalDiscount(String price, String discount, int quantity) {
    if (discount == "false") {
      return "Discount not valid for this item.";
    } else {
      return (int.parse(price) * (int.parse(discount) / 100) * quantity)
          .toString();
    }
  }

  String note = '';
  int quantity = 1;
  int amount = 1;
  double result = 1;
  double B4totalAmount = 1;
  double totalAmount = 1;
  int totalamountNoDiscount = 1;
  String hello = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text("Order")),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: 360,
              height: 550,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: 330.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset("images/" + widget.oimage)),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                widget.oname,
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              child: Text(
                                "MMK " + widget.oprice,
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              child: Text(
                                discountChecker(widget.ogenerateddiscount),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: colorChanger(widget.odiscount)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: 330.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10.0),
                        Column(
                          children: [
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: 150.0,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: Text(
                                      "Discount: " +
                                          discountPrice(widget.oprice,
                                                  widget.ogenerateddiscount)
                                              .toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: 150.0,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: Text(
                                      "Amount: " +
                                          amountCalculator(
                                              widget.oprice, quantity),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        SizedBox(width: 5.0),
                        Container(
                          width: 150.0,
                          height: 105.0,
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Icon(Icons.graphic_eq),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundActionButton(Icons.remove, () {
                                      setState(() {
                                        if (quantity > 0) {
                                          quantity--;
                                        }
                                      });
                                    }),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      child: Text(
                                        quantity.toString(),
                                        style: TextStyle(fontSize: 30),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    RoundActionButton(Icons.add, () {
                                      setState(() {
                                        quantity++;
                                      });
                                    }),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: 330.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                        child: Text(
                      "Total Discount: " +
                          totalDiscount(widget.oprice,
                              widget.ogenerateddiscount, quantity),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: 330.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                        child: Text(
                      totalAmountCalculator(
                          widget.oprice, widget.ogenerateddiscount),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: 350,
                    height: 50.0,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      onChanged: (value) {
                        note = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Specification: (E.g, No Cheese)'),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => checkout_screen(widget.oname, widget.oimage, widget.oprice, quantity, amountCalculator(widget.oprice, quantity), widget.odiscount, totalDiscount(widget.oprice, widget.ogenerateddiscount, quantity), totalAmountCalculator(widget.oprice, widget.ogenerateddiscount), note)));
                    },
                    child: Container(
                      height: 50.0,
                      width: 330.0,
                      color: Colors.teal,
                      child: Center(
                          child: Text(
                        'Proceed to checkout',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RoundActionButton extends StatelessWidget {
  const RoundActionButton(this.icon, this.onPressed) : super();
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.amber,
    );
  }
}

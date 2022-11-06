import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'receipt.dart';


const active = Colors.amber;
const inactive = Colors.white54;


const maleCardColor = inactive;
const femaleCardColor = inactive;


class checkout_screen extends StatefulWidget {
  const checkout_screen(
      this.cname,
      this.cimage,
      this.cprice,
      this.cquantity,
      this.camount,
      this.cDiscount,
      this.tDiscount,
      this.TotalAmountAfterDiscount,
      this.specification)
      : super();

  final String cname;
  final String cimage;
  final String cprice;
  final int cquantity;
  final String camount;
  final String cDiscount;
  final String tDiscount;
  final String TotalAmountAfterDiscount;
  final String specification;

  @override
  _checkout_screenState createState() => _checkout_screenState();
}

class _checkout_screenState extends State<checkout_screen> {
  String customerName = '';
  String customerEmail = "";
  String customerAddress = "";
  String customerPhone = "";
  int number = 1;


  Color maleCardColor = inactive;
  Color femaleCardColor = inactive;

  updateColor(int colore){
    if (colore == 1){
      if (maleCardColor == inactive){
        maleCardColor = active;
        femaleCardColor = inactive;
        return "Delivery";
      }
      else{
        maleCardColor = inactive;
      }
    }
    if(colore == 2){
      if (femaleCardColor == inactive){
        femaleCardColor = active;
        maleCardColor = inactive;
        return "Pickup";
      }
      else{
        femaleCardColor = inactive;
      }
    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text("Checkout")),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.amber,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 350.0,
                  height: 550.0,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Text(
                          "Order Summary",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        child: Container(
                          width: 330,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(12.0),

                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10.0,),
                              Container(
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child:
                                        Image.asset("images/" + widget.cimage)),
                              ),
                              SizedBox(width: 20.0,),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(widget.cname, style: TextStyle(fontSize: 18.0),),
                                    ),
                                    SizedBox(height: 20.0,),
                                    Container(
                                      child: Text("MMK " + widget.cprice, style: TextStyle(fontSize: 20.0),),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        width: 330,
                        height: 300.0,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10.0,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text("Product Quantity: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                  ),
                                  Container(
                                    child: Text(widget.cquantity.toString() + "   ",style: TextStyle(fontSize: 18,),),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text("Amount: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                  ),
                                  Container(
                                    child: Text(widget.camount, style: TextStyle(fontSize: 18,),),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text("Discount: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                  ),
                                  Container(
                                    child: Text(widget.tDiscount, style: TextStyle(fontSize: 15,),),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text("Total Amount: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Container(
                              width: 300,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Container(
                                child: Center(child: Text(widget.TotalAmountAfterDiscount, style: TextStyle(fontSize: 15,),)),
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text("Customer's Specification: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Container(
                              width: 300,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Container(
                                child: Center(child: Text(widget.specification, style: TextStyle(fontSize: 15,),)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 350.0,
                  height: 600.0,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(

                      children: [
                        SizedBox(height: 10.0,),
                        Container(
                          child: Text("Customer Information", style: TextStyle(fontSize: 20,),),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          child:  TextField(
                            onChanged: (value) {
                              customerName = value;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Customer Name',
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        SizedBox(height: 10.0,),
                        Container(
                          child:  TextField(
                            onChanged: (value) {
                              customerEmail = value;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Customer Email',
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        SizedBox(height: 10.0,),
                        Container(
                          child:  TextField(
                            onChanged: (value) {
                              customerPhone = value;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Customer Phone',
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          child: Text("Shipping", style: TextStyle(fontSize: 20, ),),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          child:  TextField(
                            onChanged: (value) {
                              customerAddress = value;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Customer Address',
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          child: Row(
                            children: [
                              Expanded(child: GestureDetector(
                                onTap: (){

                                  setState(() {
                                    number = 1;
                                    updateColor(number);
                                  });
                                },
                                child: ReusableCard(
                                  maleCardColor,
                                  IconContent(Icons.delivery_dining, "Delivery"),
                                ),
                              )),
                              Expanded(child: GestureDetector(
                                onTap: (){

                                  setState(() {
                                    number = 2;
                                    updateColor(number);
                                  });
                                },
                                child: ReusableCard(
                                  femaleCardColor,
                                  IconContent(Icons.store_mall_directory_rounded, "Pick Up"),
                                ),
                              )),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => receipt_screen(widget.cname, widget.cimage, widget.cprice, widget.cquantity, widget.camount, widget.tDiscount, widget.TotalAmountAfterDiscount, widget.specification, customerName, customerEmail, customerPhone,customerAddress, number)));
                          },
                          child: Container(
                            width: 330,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(child: Text("Place Order", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}

class IconContent extends StatelessWidget {
  IconContent(this.icon, this.label):super();

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        Text(label, style: TextStyle(fontSize: 18),),
        SizedBox(height: 10),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard(this.colour, this.cardChild) : super();

  final Color colour;
  final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}


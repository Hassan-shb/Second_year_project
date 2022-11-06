import 'package:flutter/material.dart';
import 'product.dart';



class receipt_screen extends StatelessWidget {
  const receipt_screen(this.rname, this.rimage, this.rprice, this.rquantity, this.ramount, this.rdiscount, this.rtotalAmount, this.rCustomerNote, this.rcName, this.rcEmail, this.rcPhone, this.rcAddress, this.rnumber) : super();

  final String rname;
  final String rimage;
  final String rprice;
  final int rquantity;
  final String ramount;
  final String rdiscount;
  final String rtotalAmount;
  final String rCustomerNote;
  final String rcName;
  final String rcEmail;
  final String rcPhone;
  final String rcAddress;
  final int rnumber;

  deliveryType(int num){
    if(num == 1){
      return "Delivery";
    }
    else{
      return "Pick Up";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Receipt')),
        backgroundColor: Colors.amber,
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
                  width: 330,
                  height: 80,
                  child: Center(child: Text("Your Receipt", style: TextStyle(fontSize: 20.0),)),
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
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
                                    Image.asset("images/" + rimage)),
                              ),
                              SizedBox(width: 20.0,),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(rname, style: TextStyle(fontSize: 15.0),),
                                    ),
                                    SizedBox(height: 20.0,),
                                    Container(
                                      child: Text("MMK " + rprice, style: TextStyle(fontSize: 20.0),),
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
                                    child: Text(rquantity.toString() + "   ",style: TextStyle(fontSize: 18,),),
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
                                    child: Text(ramount, style: TextStyle(fontSize: 18,),),
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
                                    child: Text("Discount: ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                  ),
                                  Container(
                                    child: Text(rdiscount, style: TextStyle(fontSize: 18,),),
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
                                child: Center(child: Text(rtotalAmount, style: TextStyle(fontSize: 15,),)),
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
                                child: Center(child: Text(rCustomerNote, style: TextStyle(fontSize: 15,),)),
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
                  height: 220.0,
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
                          child: Text("Customer Inforomation", style: TextStyle(fontSize: 20),),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text("Customer Name: ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                child: Text(rcName, style: TextStyle(fontSize: 15),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text("Customer Email: ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                child: Text(rcEmail, style: TextStyle(fontSize: 15),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text("Customer Phone: ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                child: Text(rcPhone, style: TextStyle(fontSize: 15),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text("Customer Address: ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                child: Text(rcAddress, style: TextStyle(fontSize: 15),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text("Shipping Type: ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                child: Text(deliveryType(rnumber), style: TextStyle(fontSize: 15),),
                              ),
                            ],
                          ),
                        ),

                      ],


                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => product_screen()),
                        );
                      },
                      child: Center(child: Text("Save Receipt and Continue Shopping", style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold),))),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'ProductDetail.dart';

class ProductList extends StatelessWidget {


  const ProductList( @required this.Pname, @required this.Pingredient, @required this.Pimage, @required this.Price, @required this.Pdiscount) : super();
  final String Pname;
  final String Pingredient;
  final String Pimage;
  final String Price;
  final String Pdiscount;



  DiscountChecker(String discountonoff){
    if(discountonoff == "On Discount"){
      return Colors.teal;
    }else{
      return Colors.red;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.0,),
        Center(
          child: GestureDetector(
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  Product_Detail_screen(Pname, Pingredient, Pimage, Price, Pdiscount)),
              );
            },
            child: Container(
              width: 350.0,
              height: 200.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),

              child: Row(
                children: [
                  SizedBox(width: 15.0,),
                  Container(
                    child: Image.asset('images/'+Pimage,),
                  ),
                  SizedBox(width: 25.0,),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(Pname, style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                          child: Text("MMK " + Price, style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          color: DiscountChecker(Pdiscount),
                          child: Text(Pdiscount, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10.0,),
      ],
    );

  }
}




class product_screen extends StatelessWidget {
  const product_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('HOME', style: TextStyle(color: Colors.white),)),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Column(
              children: [
                ProductList("Cheese Burger", "Cheese, Bread, Onion", "CheeseBurger.png", "3000", "On Discount"),
                ProductList("Big Mac", "Cheese, Bread, Onion", "BigMac.png", "3000", "No Discount"),
                ProductList("Chick Nugget", "Chicken, Bread", "ChickenNugget.png", "5000", "No Discount"),
                ProductList("Sandwich", "Chiecken, Bread, Lettuce", "chickensandwich.png", "3000", "On Discount"),
                ProductList("Choco Shake", "Chocolate, Water, Sugar", "ChocolateMilkShake.png", "4000", "On Discount"),
                ProductList("Classic Cola", "Water, Soda, Sugar", "ClassicCocacola.png", "2500", "On Discount"),
                ProductList("Double Burger", "Double Chese, Bread, Lettuce", "DoubleCheeseBurgercp.png", "6000", "No Discount"),
                ProductList("Dr-Pepper", "Water, Gas, Soda, Sugar", "Dr-Pepper.png", "2500", "On Discount"),
                ProductList("Egg Burger", "Egg, Bread, Lettuce", "EggBurger.png", "3000", "No Discount"),
                ProductList("Fanta Orange", "Orange, Gas, Water", "fantaOrange.png", "2500", "No Discount"),
                ProductList("French Fries", "Potatoes", "frenchfries.png", "3000", "On Discount"),
                ProductList("Ham Burgers", "Bread, Ham, Lettuce", "HamBurger.png", "4000", "On Discount"),
                ProductList("Ice Cream", "Ice, Cream", "Icecream.png", "3000", "On Discount"),
                ProductList("Iced Coffee", "Ice, Coffee, Water", "IcedCoffee.png", "5000", "On Discount"),
                ProductList("Straw Shake", "Strawberry, Water, Sugar", "StrawberryShake.png", "7000", "On Discount")

              ],
            ),
          ),
        ),
      ),
    );
  }
}

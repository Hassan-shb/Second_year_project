import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'product.dart';

class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  _login_screenState createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  String email = '';
  String password = '';

  emailValidation(String emailValue){
    if(email.contains('@')){
      return true;
    }
    else{
      return false;
    }
  }

  checkPassword (email, password){
    if(email == "waiyan@gmail.com" && password == "123456"){
      return true;
    }
    else{
      return false;
    }
  }

  returnDialog(){
    return showDialog(context: context, builder: (context) => AlertDialog(
      title: Center(child: Text("Invalid Email Address")),
      content: Text("Your email address must contain \'@\' Symbol", style: TextStyle(fontSize: 20),),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("OK", style: TextStyle(fontSize: 20),)),
      ],
    ));
  }

  matchDialog(){
    return showDialog(context: context, builder: (context) => AlertDialog(
      title: Center(child: Text("Your Credentials are wrong")),
      content: Text("Your email or password is incorrect", style: TextStyle(fontSize: 20),),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("OK", style: TextStyle(fontSize: 20),)),
      ],
    ));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Container(
                child: Text(
                  "Welcome!!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Text(
                  "Sign in to explore our store and order what you love!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Username'),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  onChanged: (value) {
                    password = value;

                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Builder(
                builder: (context) => FlatButton(
                  onPressed: () {

                    if(emailValidation(email)){
                      if(checkPassword(email, password)){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => product_screen()),
                        );
                      }else{
                        matchDialog();
                      }
                    }else{
                      returnDialog();
                    }



                  },
                  child: Container(
                      width: 345.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.amber,
                      ),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ))),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

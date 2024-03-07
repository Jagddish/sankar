import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimeLogin extends StatefulWidget {
  const AnimeLogin({super.key});

  @override
  State<AnimeLogin> createState() => _AnimeLoginState();
}

class _AnimeLoginState extends State<AnimeLogin> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(

      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/night.png'),
            fit: BoxFit.cover,
          ),
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            Container(
              height: height*0.3,

              child: Stack(children: [
                Positioned(
                  left: 30,
                  width: 80,
                  height: 200,
                  child: FadeInDown(duration: Duration(seconds: 1), child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/fruits.png'),
                        )
                    ),
                  )),
                ),
                Positioned(
                  left: 140,
                  width: 80,
                  height: 150,
                  child: FadeInDown(duration: Duration(milliseconds: 1200), child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/apple.png')
                        )
                    ),
                  )),
                ),
                Positioned(
                  right: 40,
                  top: 40,
                  width: 80,
                  height: 150,
                  child: FadeInDown(duration: Duration(milliseconds: 1300),
                      child: Container(
                        child: Icon(Icons.star,size: 80,color: Color.fromRGBO(255, 255, 255, .7),),
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //         image: AssetImage('images/straberry.png')
                    //     )
                    // ),
                  )),
                ),
                Positioned(

                  child: FadeInUp(duration: Duration(milliseconds: 1600), child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Icon(Icons.person,color: Color.fromRGBO(255, 255, 255, .9),size: 100,)
                      // Text("Login", style: TextStyle(
                      //     color: Color.fromRGBO(255, 255, 255,1) ,
                      //     fontSize: 40, fontWeight: FontWeight.bold),),
                    ),
                  )),
                ),
                Positioned(
                  child: FadeInUp(duration: Duration(milliseconds: 1600), child: Container(
                    margin: EdgeInsets.only(top: 150),
                    child: Center(
                      child: Text("Login", style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255,.9) ,
                          fontSize: 40, fontWeight: FontWeight.bold),),
                    ),
                  )),
                ),



              ],)
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  FadeInUp(duration: Duration(milliseconds: 1800), child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.white),


                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Color.fromRGBO(143, 148, 251, .2),
                        //       blurRadius: 20.0,
                        //       offset: Offset(0, 10)
                        //   )
                        // ]
                    ),
                    child: Column(
                      children: <Widget>[
                        // Email text-field
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color:  Colors.white),)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email or Phone number",
                                hintStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                            ),
                          ),
                        ),

                        // password
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: true,
                            obscuringCharacter: '#',
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.lock_outline,color: Colors.white,),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                  SizedBox(height: 30,),
                  FadeInUp(duration: Duration(milliseconds: 1900),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(214, 176, 135, 1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                          boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10)
                          )
                        ]
                        // gradient: LinearGradient(
                        //   colors: [
                        //     Color.fromRGBO(143, 148, 251, 1),
                        //     Color.fromRGBO(143, 148, 251, .6),
                        //   ],),
                      ),
                      child: Center(
                        child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  FadeInUp(duration: Duration(milliseconds: 2000), child: Text("Forgot Password?", style: TextStyle(color: Colors.white),)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

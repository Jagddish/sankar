import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sankar/main.dart';
import 'package:sankar/pages/login_page.dart';
import 'package:sankar/text/applargetext.dart';
import 'package:sankar/text/apptext.dart';
import 'package:sankar/text/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final imgs = [
      'welcome-one.png',
      'welcome-two.png',
      'welcome-three.png',
    ];
    final double height = MediaQuery.of(context).size.height;
    final space = SizedBox(height: height * 0.04);

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Home"),
        // backgroundColor: Colors.blue[50],
        centerTitle: true,
      ),
      body: PageView.builder(
          itemCount: 3,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage('images/' + imgs[index]),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 100.0, left: 40.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LargeText(text: 'Hello'),
                        AppText(
                          text: "Mountains",
                          size: 30.0,
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: List.generate(
                          3,
                          (indexDots) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 3.0),
                              height: index == indexDots ? 25.0 : 8,
                              width: 8.0,
                              decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(10.0)),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.purple.shade800,
              height: height * 0.28, //container size
              padding: EdgeInsets.only(
                top: height * 0.04,
                left: height * 0.04,
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/dp.jpg'),
                    radius: height * 0.05,
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Flutter Developer',
                          style: TextStyle(color: Colors.white, fontSize: 20.0,),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          'flutter@developer.com',
                          style: TextStyle(color: Colors.white,fontSize: 20.0),
                        ),
                      ],
                    ),
                    // SizedBox(height: height*0.02,),
                  )
                ],
              ),
            ),
            Container(
              height: height * 0.13,
              padding: EdgeInsets.all(20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.home),
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade800,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1.5, // Adjust the height of the Divider
              color: Colors.purple.shade800, // Set the color of the Divider
            ),
            Container(
              height: height * 0.13,
              padding: EdgeInsets.all(20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1.5, // Adjust the height of the Divider
              color: Colors.purple.shade800, // Set the color of the Divider
            ),
            Container(
              height: height * 0.13,
              padding: EdgeInsets.all(20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.print),
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: Text(
                      'About us',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade800,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1.5, // Adjust the height of the Divider
              color: Colors.purple.shade800, // Set the color of the Divider
            ),
            Container(
              height: height * 0.13,
              padding: EdgeInsets.all(20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.contacts),
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: Text(
                      'Contact us',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade800,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1.5, // Adjust the height of the Divider
              color: Colors.purple.shade800, // Set the color of the Divider
            ),
            Container(
              height: height * 0.13,
              padding: EdgeInsets.all(20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.logout),
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyApp(),
                          ));
                    },
                    child: Text(
                      'Log out',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade800,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:talabateyproject/talabatey/page2/talabatey.dart';
import 'package:talabateyproject/talabatey/search.dart';
import 'package:talabateyproject/totersproject/page1/page1.dart';

import 'login2.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  int _selected =0;
  List<Widget> screens = [
    login(),

    page1(),


     search(),
    talabatey(),


  ];
  get primaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin,
            ),
            label: ("Account"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ('Home'),
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(size: 32),
        unselectedIconTheme: IconThemeData(size: 30),
        selectedLabelStyle: TextStyle(fontSize: 16, color: primaryColor),
        unselectedLabelStyle: TextStyle(fontSize: 14, color: primaryColor),
        currentIndex: _selected,
        onTap: (index) {
          setState(() {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => screens[index]));
          });
        },
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image(
            image: AssetImage("images/imgt.png"),
            color: Colors.red,
            width: 250,
            height: 130,
          )),
          SizedBox(
            height: 70,
          ),

     Container(
            width: MediaQuery.of(context).size.width * 0.88,
            height: MediaQuery.of(context).size.width * 0.13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.grey.shade200,
            ),


            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  counterStyle: TextStyle(color: Colors.red, fontSize: 18),
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: 'الاسم',
                  hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                keyboardType: TextInputType.name,
                maxLength: 15,

              ),
            ),
          ),


          SizedBox(
            height: 40,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.88,
            height: MediaQuery.of(context).size.width * 0.13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.grey.shade200,
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  counterStyle: TextStyle(color: Colors.red, fontSize: 18),
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: 'رقم الهاتف',
                  hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                keyboardType: TextInputType.number,
                maxLength: 11,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => login2()));
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.arrow_left,
                          color: Colors.red,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "أذا كان لديك رمز مشاركة ,اضغط هنا",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
    GestureDetector(
    onTap: () {
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => talabatey()));
    },
            child:  Container(

                height: 50,
                width: MediaQuery.of(context).size.width * 0.88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "التالي",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
    ),
            ],

          ),
        ],
      ),
    );
  }
}

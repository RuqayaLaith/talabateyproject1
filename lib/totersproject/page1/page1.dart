import 'package:flutter/material.dart';
import 'package:talabateyproject/talabatey/login.dart';
import 'package:talabateyproject/talabatey/login2.dart';
import 'package:talabateyproject/talabatey/page2/talabatey.dart';
import 'package:talabateyproject/talabatey/search.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  int _selected =1;
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
      appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          actions: [
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "توصيل الى",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )),
                Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                        ),
                        child: Text(
                          "بغداد,العراق",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                )
              ],
            )
          ],
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_road,
                color: Colors.black45,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.notifications_none_sharp,
                color: Colors.black45,
                size: 20,
              ),
            ],
          )),

      body: ListView(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "سجل الدخول باستخدام تطبيق",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return img();
                },
              )
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  photo(),
                  photo(),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  photo(),
                  photo(),
                  photo(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget img() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.all(5.0),
              height: 200,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.a79abc90faa2da8c191430a513df2972?rik=sCskAbg3RUJswg&pid=ImgRaw&r=0"),
                  )),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 40,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 170, left: 20),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 5)],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        "1",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "س",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 300),
              child: Text(
                "كنتاكي",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Text(
              "فطور\.\$\$",
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Text(
                    "اكسب نقاط",
                    style: TextStyle(fontSize: 18, color: Colors.green),
                  ),
                  Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              height: 40,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "4.9",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget photo() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://i.ytimg.com/vi/beqZDcmBiyo/hqdefault.jpg"),
                        )),
                  ),
                  Text(
                    ("بركرات"),
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),


        ],
      ),
    );
  }
}

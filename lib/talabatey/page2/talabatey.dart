import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:talabateyproject/talabatey/login.dart';
import 'package:talabateyproject/talabatey/login2.dart';
import 'package:talabateyproject/talabatey/search.dart';
import 'package:talabateyproject/totersproject/page1/page1.dart';

class talabatey extends StatefulWidget {
  const talabatey({Key? key}) : super(key: key);

  @override
  State<talabatey> createState() => _talabateyState();
}

class _talabateyState extends State<talabatey> {
  int _selected =3;
  List<Widget> screens = [
    login2(),

    page1(),
    search(),
    talabatey(),



  ];
  get primaryColor => null;

  int selectedIndex = 0;

  List<String> Images = [
    "https://content.mosaiquefm.net/uploads/content/thumbnails/1513767905_article.jpg",
    "https://th.bing.com/th/id/R.b8d6609a44643ce9500f31a378e25f62?rik=SxtdBF06c5jN2w&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/OIP.6MYrReOWPelLLv8oZk0HZQHaEo?w=279&h=180&c=7&r=0&o=5&dpr=1.8&pid=1.7",
    "https://th.bing.com/th/id/OIP.Kggwtq6yGymHfQEjnAPICQHaDt?w=320&h=174&c=7&r=0&o=5&dpr=1.8&pid=1.7",
    "https://th.bing.com/th/id/OIP.PZVD6LBAfRfBXl7IaHAOTwHaE8?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/R.63acf0e469d43912875e52df1387cfd2?rik=msKmMsVd5RfDEw&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/OIP.PZVD6LBAfRfBXl7IaHAOTwHaE8?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/R.63acf0e469d43912875e52df1387cfd2?rik=msKmMsVd5RfDEw&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.8e8663677fb4cbad809f2357769e895e?rik=tIP9GmBt3vJV1g&riu=http%3a%2f%2ffriendss.net%2fwp-content%2fuploads%2f2018%2f05%2f3282-9.jpg&ehk=QT6bDhQ%2fJyizFnxP%2bAaFwm4JCQFaxgOz6AkXmbenU5g%3d&risl=&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.1f31904f76693e68d7a807d67a1eca5d?rik=WWpMD6bAsMFkog&pid=ImgRaw&r=0&sres=1&sresct=1",
  ];
  List<String> Titles = [
    "لحوم ",
    "الفواكه والخضروات ",
    "المعجنات ",
    "ماركت ",
    "حلويات ",
    "دايت فود ",
    "المطاعم ",
    "الكرزات ",
    "الزهور ",
    "المكتبات ",
  ];

  List<String> Images2 = [
    "https://i.ytimg.com/vi/beqZDcmBiyo/hqdefault.jpg",
    "https://th.bing.com/th/id/R.a79abc90faa2da8c191430a513df2972?rik=sCskAbg3RUJswg&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.11faa616b81e80816c79434c93bf5567?rik=gcWLhqGv6Vuq%2bA&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.a562049a26388b70c2833a61dd87a809?rik=tO%2fyXaNd9MFnzA&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.d26615286cbe2455c143becd2344fbc3?rik=q7s4b9qC7WeHkg&pid=ImgRaw&r=0",
  ];
  List<String> Titles2 = [
    "فاير بركر ",
    "فرايد تجكن ",
    "Mado ",
    "زرزور",
    "دكتور بركر ",
  ];
  List<String> Buttons = [
    "الكل",
    "خصومات",
    "يدعم المحافظة",
    "توصيل الطلباتي",
    "توصيل مجاني",
    "الكل",
    "خصومات",
    "يدعم المحافظة",
    "توصيل الطلباتي",
    "توصيل مجاني",
    "الكل",
    "خصومات",
    "يدعم المحافظة",
    "توصيل الطلباتي",
    "توصيل مجاني",
  ];
  List<String> Images3 = [
    "https://th.bing.com/th/id/R.11faa616b81e80816c79434c93bf5567?rik=gcWLhqGv6Vuq%2bA&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.a79abc90faa2da8c191430a513df2972?rik=sCskAbg3RUJswg&pid=ImgRaw&r=0",
    "https://i.ytimg.com/vi/beqZDcmBiyo/hqdefault.jpg",
    "https://th.bing.com/th/id/R.a562049a26388b70c2833a61dd87a809?rik=tO%2fyXaNd9MFnzA&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.11faa616b81e80816c79434c93bf5567?rik=gcWLhqGv6Vuq%2bA&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.a79abc90faa2da8c191430a513df2972?rik=sCskAbg3RUJswg&pid=ImgRaw&r=0",
  ];
  List<String> Price = [
    "الحد الادنى للطلب:10,000 د.ع",
    "الحد الادنى للطلب:5,000 د.ع",
    "الحد الادنى للطلب:9,000 د.ع",
    "الحد الادنى للطلب:7,000 د.ع",
    "الحد الادنى للطلب:4,000 د.ع",
    "الحد الادنى للطلب:8,000 د.ع",
  ];
  List<String> Request = [
    "مادو",
    "فرايد تجكن",
    "بركرات",
    "زرزور",
    "مادو",
    "فرايد تجكن",
  ];
  List<String> Delivrey = [
    " سعر التوصيل:6,500 د.ع",
    " سعر التوصيل:6,000 د.ع",
    " سعر التوصيل:5,000 د.ع",
    " سعر التوصيل:6,500 د.ع",
    " سعر التوصيل:5,500 د.ع",
    " سعر التوصيل:5,500 د.ع",
  ];
  List<String> Evaluation = [
    "جيد جدا",
    "جيد جدا",
    "جيد جدا",
    "جيد جدا",
    "جيد جدا",
    "جيد جدا",
  ];
  List<String> Location = [
    "المنصور",
    "كرادة",
    "كرادة",
    "كرادة",
    "كرادة",
    "كرادة",
  ];
  List<String> Pcode = [
    "بروموكود",
    "بروموكود",
    "بروموكود",
    "بروموكود",
    "بروموكود",
    "بروموكود",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
              size: 40,
            ),
            Text(
              "المنصور",
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
          ],
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(),
              child: Icon(
                Icons.notifications_none_sharp,
                color: Colors.black,
                size: 35,
              )),
        ],
        leading: Padding(
          padding: EdgeInsets.all(0),
          child: Icon(
            Icons.search,
            color: Colors.black,
            size: 40,
          ),
        ),
      ),
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
      body: ListView(
        children: [
          SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return photos(Images[index], Titles[index]);
                },
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  "المحلات الاكثر شيوعا",
                  style: TextStyle(fontSize: 23, color: Colors.red),
                ),
              ),
              Container(
                height: 2,
                width: 200,
                color: Colors.red,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return foods(Images2[index], Titles2[index]);
                },
              )),
          SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return button(Buttons[index]);
                },
              )),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return information(
                          Images3[index],
                          Price[index],
                          Request[index],
                          Delivrey[index],
                          Evaluation[index],
                          Location[index],
                          Pcode[index]);
                    },
                  )),
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
                  img(),
                  img(),
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
                  img(),
                  img(),
                  img(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget photos(String image, String text) {
    return Container(
      child: Row(
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
                      image: NetworkImage(image),
                    )),
              ),
              Text(
                (text),
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget foods(String image, String text) {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                height: 120,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(image),
                    )),
              ),
              Text(
                (text),
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget button(
    String text,
  ) {
    return Row(children: [
      Stack(
        children: [
          Container(
            margin: EdgeInsets.all(5.0),
            height: 120,
            width: 110,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(text),
              ),
            ],
          ),
        ],
      ),
    ]);
  }

  Widget information(
    String pic,
    String price,
    String request,
    String delivrey,
    String evaluation,
    String location,
    String pcode,
  ) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 130,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(pic),
                  )),
            ),
            Container(
              padding: EdgeInsets.only(left: 280, top: 10),
              child: Row(
                children: [
                  Text(
                    (pcode),
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.only(right: 20, left: 20, bottom: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    (price),
                    style: TextStyle(color: Colors.black45, fontSize: 18),
                  ),
                  Text(
                    (request),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        (delivrey),
                        style: TextStyle(color: Colors.black45, fontSize: 18),
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black45,
                        size: 20,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        (evaluation),
                        style: TextStyle(color: Colors.black45, fontSize: 18),
                      ),
                      Icon(
                        Icons.insert_emoticon_outlined,
                        color: Colors.black45,
                        size: 20,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        (location),
                        style: TextStyle(color: Colors.black45, fontSize: 18),
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.black45,
                        size: 20,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget img() {
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
                              "https://th.bing.com/th/id/R.d26615286cbe2455c143becd2344fbc3?rik=q7s4b9qC7WeHkg&pid=ImgRaw&r=0"),
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

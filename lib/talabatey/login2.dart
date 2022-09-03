import 'package:flutter/material.dart';
import 'package:talabateyproject/talabatey/login.dart';
import 'package:talabateyproject/talabatey/page2/talabatey.dart';
import 'package:talabateyproject/totersproject/page1/page1.dart';

class login2 extends StatefulWidget {
  const login2({Key? key}) : super(key: key);

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      body:Padding(padding: EdgeInsets.only(top: 50),

      child:   ListView(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                  Column(
                    children: [


                      Icon(Icons.arrow_drop_down,color: Colors.red,size: 20,),
                    ],
                  ),


                  Text("أذا كان لديك رمز مشاركة ,اضغط هنا",style: TextStyle(color: Colors.red,fontSize: 25),),

                ],
              ),
              SizedBox(
                height: 20,
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


                child:Center(

                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'رمز المشاركة',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    ),

                  ),

                ),),
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
    ],
      ),

      ),

    );
  }
}
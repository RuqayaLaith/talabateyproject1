import 'package:flutter/material.dart';
import 'package:talabateyproject/talabatey/login.dart';

import '../page2/talabatey.dart';

class pagetalabatey extends StatefulWidget {
  const pagetalabatey({Key? key}) : super(key: key);

  @override
  State<pagetalabatey> createState() => _pagetalabateyState();
}

class _pagetalabateyState extends State<pagetalabatey> {
  Future Delay() async {
    await new Future.delayed(const Duration(seconds: 4));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => login()),
    );
  }

  @override
  void initState() {
    super.initState();
    Delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(

          fit: BoxFit.cover,
          image: AssetImage("images/img.png"),
        )),
      ),
    );
  }
}

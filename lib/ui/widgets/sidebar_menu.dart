import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SidebarMenuWidget extends StatelessWidget {
  const SidebarMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).closeDrawer();
                  },
                  icon: Icon(Icons.close)),
            ),
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: ClipOval(
                      child: SvgPicture.asset('assets/42logo.svg'),
                    ),
                  ),
                  Text(
                    'junkim2',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'Junho Kim',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 30, top: 6, bottom: 6),
                  // decoration: BoxDecoration(border: Border.all()),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '마이페이지',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 30, top: 6, bottom: 6),
                  // decoration: BoxDecoration(border: Border.all()),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '예약하기',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 30, top: 6, bottom: 6),
                  // decoration: BoxDecoration(border: Border.all()),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '고장 신고하기',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 30, top: 6, bottom: 6),
                  // decoration: BoxDecoration(border: Border.all()),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '사용법 알아보기',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 30, top: 6, bottom: 6),
                  // decoration: BoxDecoration(border: Border.all()),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '문의하기',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                // decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('contact us', style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 2,),
                    Text('teamlv42@gmail.com',),
                    SizedBox(height: 2,),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/github_icon.png'),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

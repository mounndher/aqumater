import 'package:aquameter/core/constant/color.dart';
import 'package:aquameter/view/screen/settings.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/auth/textfromshadow.dart';
import '../widget/home/card1.dart';
import '../widget/home/card2.dart';
import '../widget/home/card3.dart';
import '../widget/home/card4.dart';
import '../widget/home/sendimage.dart';
import '../widget/home/showModalBottomSsheet.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bleu,
        elevation: 10,
        leading: Container(
          padding: EdgeInsets.all(10),
          child: Image.asset('assets/images/logoappbar.png'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            barrierColor: Colors.transparent,
            isDismissible: true,
              isScrollControlled: true,
              context: context,
              
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top:Radius.circular(22),
                )
              ),
              builder: (context) {
                
                return  const ShowModalBottomSsheet();
              });
        },
        backgroundColor: AppColor.bleu,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 60.0,
        items: <Widget>[
          Image.asset('assets/images/home.png'),
          Image.asset('assets/images/graph.png'),
          Image.asset('assets/images/Support.png'),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
              child: Image.asset('assets/images/profile.png')),
        ],
        color: AppColor.bleufatg,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {},
        letIndexChange: (index) => true,
      ),
      body: ListView(
        children: [
          Container(
              color: AppColor.bleufatg,
              child:  Textfromshadow(
                hhintText: 'Search',
                icon: Icons.search, valid: (String ){  }, isNumber: false, mycontroller: null,
              )),
          Container(
            height: 280,
            color: AppColor.bleufatg,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 180,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 10),
              children: const [
                Card1(),
                Card2(),
                Card3(),
                Card4(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SendImage(),
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Container(
                    width: 48,
                    height: 71,
                    child: SvgPicture.asset('assets/homeimg/3.svg')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Container(
                    width: 80,
                    height: 71,
                    child: SvgPicture.asset('assets/homeimg/4.svg')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                    width: 64,
                    height: 71,
                    child: SvgPicture.asset('assets/homeimg/5.svg')),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 78.0),
                child: Container(
                    width: 48,
                    height: 71,
                    child: SvgPicture.asset('assets/homeimg/6.svg')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Container(
                    width: 48,
                    height: 71,
                    child: SvgPicture.asset('assets/homeimg/7.svg')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Container(
                    width: 55,
                    height: 71,
                    child: SvgPicture.asset('assets/homeimg/9.svg')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailto/mailto.dart';

void main() {
  runApp(Application());
}

_launchURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Text("امید کرمی"),
      centerTitle: true,
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          _getHeader(),
        ],
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('images/omid.jpg'),
          radius: 70,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "امید کرمی هستم یه برنامه نویس",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
          textAlign: TextAlign.right,
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(right: 10, left: 10),
          child: Text(
            "عاشق برنامه نویسی موبایل اندروید و فلاتر، دوست دارم هرچیزی که یاد میگیرم رو به اشتراک بزارم و یاد بدم ",
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        personalInformation(),
        SizedBox(
          height: 12,
        ),
        personal(),
        SizedBox(
          height: 12,
        ),
        _iconSocial(),
        SizedBox(
          height: 10,
        ),
        skillTitle(),
        SizedBox(
          height: 10,
        ),
        _getSkilCard(),
        SizedBox(
          height: 10,
        ),
        getResume(),
        SizedBox(
          height: 10,
        ),
        education()
      ],
    );
  }

  Widget skillTitle() {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      width: double.infinity,
      color: Colors.grey[100],
      child: Align(
          alignment: Alignment.center,
          child: Text(
            "مهارت ها",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
          )),
    );
  }

  Widget getResume() {
    var list = [
      "برنامه نویس اپ های اندروید به صورت فریلنس",
      "برنامه نویس برنامه هایی با زبان سی شارپ و پایتون برای پروژه های دانشجویی",
      "برنامه نویس جاوا در شرکت داتین در سال 99 به صورت پاره وقت",
      "برنامه نویس اندروید اپلیکیشن Ayyza در شرکت چشم انداز توسعه فناوری اطلاعات رجا در سال 1400 به صورت تمام وقت",
      "کارشناس تست نفوذ در شرکت فناوری اطلاعات رجا در سال 1400",
      "تست نفوذ سازمان بیمه سلامت"
    ];

    return Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        margin: EdgeInsets.only(right: 10),
        width: double.infinity,
        color: Colors.grey[100],
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "سابقه کاری من",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                for (var resume in list)
                  Text(
                    "$resume",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                SizedBox(
                  height: 3,
                ),
              ],
            ),
          ],
        ));
  }

  Widget education() {
    var list = [
      "کاردانی نرم افزار از دانشگاه آزاد اسلامی سما تهرانسر از سال 1394 تا 1396",
      "کارشناسی نرم افزار از دانشگاه آزاد اسلامی تهران مرکز از سال 1397 الی 1400 ",
      "کارشناسی ارشد نرم افزار دانشگاه آزاد اسلامی واحد الکترونیک از سال 1401 تا کنون",
      "دوره برنامه نویسی اندروید مکتب شریف سال 1398 به مدت 240 ساعت",
    ];

    return Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        margin: EdgeInsets.only(right: 10),
        width: double.infinity,
        color: Colors.grey[100],
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "سوابق تحصیلی من",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                for (var resume in list)
                  Text(
                    "$resume",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                SizedBox(
                  height: 3,
                ),
              ],
            ),
          ],
        ));
  }

  Widget personalInformation() {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      width: double.infinity,
      color: Colors.grey[100],
      child: Text(
        "اطلاعات شخصی",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget personal() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "نام خانوادگی : کرمی",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "نام : امید",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "تاریخ تولد : 1377/01/04",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "وضعیت خدمت : معافیت تحصیلی تا 1403",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
          ],
        ),

        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "ساکن : تهران",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "وضعیت تاهل : مجرد",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }

  Widget _iconSocial() {
    var list = [
      FontAwesomeIcons.instagram,
      FontAwesomeIcons.linkedin,
      FontAwesomeIcons.github,
      FontAwesomeIcons.telegram,
      FontAwesomeIcons.whatsapp,
      FontAwesomeIcons.envelope
    ];
    return Container(
      margin: EdgeInsets.only(left: 2, right: 2),
      child: Wrap(
        spacing: 20,
        alignment: WrapAlignment.center,
        children: [
          for (var icon in list)
            IconButton(
              onPressed: () {
                if (icon == FontAwesomeIcons.instagram) {
                  _launchURL("https://instagram.com/_omidkaramiii");
                }
                if (icon == FontAwesomeIcons.linkedin) {
                  _launchURL("https://www.linkedin.com/in/omidkarami-/");
                }
                if (icon == FontAwesomeIcons.github) {
                  _launchURL("https://github.com/omidkarami77");
                }
                if (icon == FontAwesomeIcons.telegram) {
                  _launchURL("https://t.me/omiiidkaramiii");
                }
                if (icon == FontAwesomeIcons.whatsapp) {
                  _launchURL("https://wa.me/+989305295898");
                }
                if (icon == FontAwesomeIcons.envelope) {
                  launchMailto();
                }
              },
              icon: FaIcon(icon),
              color: Colors.blueGrey,
            ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  void showNoMailAppsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Open Mail App"),
          content: Text("No mail apps installed"),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }
}

Widget _getSkilCard() {
  var list = ["android", "dart", "flutter", "java", "linux", "api"];
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        for (var skill in list)
          Container(
            margin: EdgeInsets.only(left: 2, right: 2),
            child: Card(
              elevation: 6,
              child: Column(
                children: [
                  Container(
                    height: 80.0,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Image(
                        width: 60.0,
                        image: AssetImage('images/$skill.png'),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8), child: Text("$skill"))
                ],
              ),
            ),
          ),
      ],
    ),
  );
}

launchMailto() async {
  final mailtoLink = Mailto(
    to: ['omidtkd77@gmail.com'],
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}

import 'dart:math' as math;
import 'package:Sukham/screens/navdrawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_8.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_viewer/story_viewer.dart';
import 'package:url_launcher/url_launcher.dart';


var images1 = [
  "https://flutter7designs.files.wordpress.com/2020/11/testimonial_4.png",
  "https://flutter7designs.files.wordpress.com/2020/11/testimonial_3.png",
  "https://flutter7designs.files.wordpress.com/2020/11/testimonial_2.png",
  "https://flutter7designs.files.wordpress.com/2020/11/testimonial_1.png",
];

final List<String> imgList = [
  'https://flutter7designs.files.wordpress.com/2020/11/2.jpg',
  'https://flutter7designs.files.wordpress.com/2020/11/1.jpg',
  'https://flutter7designs.files.wordpress.com/2020/11/3.jpg',
  'https://flutter7designs.files.wordpress.com/2020/11/4.png',

];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Sukham';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,

      home: HomePage(), // ExamplePhone(),
    );
  }
}

class HomePage extends StatelessWidget {
  static const String routeName = '/homePage';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Sukham'),

          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {

                    Navigator.pushNamed(context, '/notification');
                  },
                  child: Icon(
                    Icons.notifications_active_rounded,
                    size: 26.0,
                  ),
                )
            ),]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.all(1),
                alignment: Alignment.center,
                constraints: BoxConstraints.expand(
                    height: 250
                ),
                child: imageSlider(context),

            ),
            SizedBox(height: 35),
            getTitleText("WELCOME TO SUKHAM"),
            getSenderView(
                ChatBubbleClipper8(type: BubbleType.sendBubble), context),
            getReceiverView( ChatBubbleClipper8(type: BubbleType.sendBubble), context),
            StoryViewer(
              padding: EdgeInsets.all(8),
              backgroundColor: Colors.white,
              ratio: StoryRatio.r16_9,
              loop: true,
              stories: [
                StoryItemModel(imageProvider: NetworkImage(images1[0])),
                StoryItemModel(imageProvider: NetworkImage(images1[1])),
                StoryItemModel(imageProvider: NetworkImage(images1[2])),
                StoryItemModel(imageProvider: NetworkImage(images1[3])),
              ],
              userModel: UserModel(
                username: "Happy Customers",
                profilePictureUrl:
                "https://flutter7designs.files.wordpress.com/2020/11/logo.png",
              ),
            ),
            MaterialButton(
                child: Text("Request Your Testimonial!"),
                color: Colors.pinkAccent,
                onPressed: () {
                  /*Navigator.of(context).push(MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => DetailedHome()));*/
                }),
            SizedBox(height: 35),
            Text(
              'Our Services',
              style: GoogleFonts.oswald(
                textStyle: Theme.of(context).textTheme.display1,
                fontSize: 30,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Container(

                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.fromLTRB(20,20,20,20),
                constraints: BoxConstraints.expand(
                    height: 320
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0xFFC0C0C0),
                        offset: Offset(5.0, 7.0),
                        blurRadius:11.0,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 30.0,
                          semanticLabel: 'SUKHAM AUTHENTIC RELAX MASSAGE',
                        ),
                        Text(
                          'SUKHAM AUTHENTIC RELAX MASSAGE',
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.yellow,
                          size: 30.0,
                          semanticLabel: 'AYURVEDA THERAPEUTIC MASSAGE',
                        ),
                        Text(
                          'AYURVEDA THERAPEUTIC MASSAGE',
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.red,
                          size: 30.0,
                          semanticLabel: 'DEEP TISSUE MASSAGE',
                        ),
                        Text(
                          'DEEP TISSUE MASSAGE',
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.blue,
                          size: 30.0,
                          semanticLabel: 'SPORTS MASSAGE',
                        ),
                        Text(
                          'SPORTS MASSAGE',
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.pink,
                          size: 30.0,
                          semanticLabel: 'SOFT RELAXING MASSAGE',
                        ),
                        Text(
                          'SOFT RELAXING MASSAGE',
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.purple,
                          size: 30.0,
                          semanticLabel: 'STRETCHING MASSAGE',
                        ),
                        Text(
                          'STRETCHING MASSAGE',
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.black26,
                          size: 30.0,
                          semanticLabel: 'BELLY MASSAGE',
                        ),
                        Text(
                          'BELLY MASSAGE',
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.brown,
                          size: 30.0,
                          semanticLabel: 'AROMA OIL MASSAGE',
                        ),
                        Text(
                          'AROMA OIL MASSAGE',
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: (){

                        _launchURL();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Loving it! Tap',
                            style: GoogleFonts.pacifico(
                              textStyle: Theme.of(context).textTheme.display1,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Image.asset('assets/images/heart.gif',
                            height: 40,
                            width: 50,
                            )

                        ],
                      ),
                    ),

                  ],
                )

            ),
            SizedBox(height: 35),
            Text(
              'Gallery',
              style: GoogleFonts.oswald(
                textStyle: Theme.of(context).textTheme.display1,
                fontSize: 30,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(height: 35),
           // DemoItem('Vertical carousel slider', '/vertical'),
            Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 1.5,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.vertical,
                    autoPlay: true,
                  ),
                  items: imageSliders,
                )
            ),
           SizedBox(height: 40),
            Container(

                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.fromLTRB(20,20,20,20),
                constraints: BoxConstraints.expand(
                    height: 70
                ),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0xFFC0C0C0),
                        offset: Offset(5.0, 7.0),
                        blurRadius:11.0,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/logo.png',height: 50,width: 50),
                        Text(
                          'We are taking every precaution from COVID-19 while at work ',
                          style: GoogleFonts.oswald(
                              textStyle: Theme.of(context).textTheme.display1,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),


                  ],
                )

            ),

           Container(
             height: 10,
             color: Color(0xFFD3D3D3),
           ),
            Container(
              height: 10,
              color: Color(0xFFFF69B4),
            )


          ],
        ),
      ),
      drawer: NavDrawer()
    );
  }
}

final List<Widget> imageSliders = imgList.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  '',/*No. ${imgList.indexOf(item)} image*/
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
    ),
  ),
)).toList();

class DemoItem extends StatelessWidget {
  final String title;
  final String route;
  DemoItem(this.title, this.route);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}


Swiper imageSlider(context){
  return  new Swiper.children(
    autoplay: true,
    pagination: new SwiperPagination(
        margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
        builder: new DotSwiperPaginationBuilder(
            color: Colors.pink[50],
            activeColor: Colors.pink[100],
            size: 10.0,
            activeSize: 12.0)),
    children: <Widget>[
      new Image.network(
        "https://flutter7designs.files.wordpress.com/2020/11/33.jpg",fit:BoxFit.fill,
      ),
      new Image.network(
        "https://flutter7designs.files.wordpress.com/2020/11/sport1.jpg",fit:BoxFit.fill,
      ),
      new Image.network("https://flutter7designs.files.wordpress.com/2020/11/pic11.jpg",  fit:BoxFit.fill),
      new Image.network("https://flutter7designs.files.wordpress.com/2020/11/oil11.jpg",  fit:BoxFit.fill),
      new Image.network("https://flutter7designs.files.wordpress.com/2020/11/bellm.jpg",  fit:BoxFit.fill),
      new Image.network("https://flutter7designs.files.wordpress.com/2020/11/22.jpg",  fit:BoxFit.fill),
      new Image.network("https://flutter7designs.files.wordpress.com/2020/11/11.jpg",  fit:BoxFit.fill)
    ],
  );
}

_launchURL() async {
  const url = 'https://www.google.com/search?ei=miagX9G8Fsqa4-EP98m4gAU&q=sukham++message+center+bhubaneswar+google+review&oq=sukham++message+center+bhubaneswar+google+review&gs_lcp=CgZwc3ktYWIQA1DeIVj9YGCGYmgDcAB4AIABowKIAdw4kgEEMi0yOZgBAKABAaoBB2d3cy13aXrAAQE&sclient=psy-ab&ved=0ahUKEwjR8aOol-TsAhVKzTgGHfckDlAQ4dUDCA0&uact=5#lkt=LocalPoiReviews&trex=m_t:lcl_akp,rc_f:nav,rc_ludocids:12638291460148011233,rc_q:SUKHAM%2520(Kerala%2520Massage%2520Center),ru_q:SUKHAM%2520(Kerala%2520Massage%2520Center),trex_id:dPSJN';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}



Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}


//new drawer
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(icon: Icons.contacts, text: 'Contacts',),
          _createDrawerItem(icon: Icons.event, text: 'Events',),
          _createDrawerItem(icon: Icons.note, text: 'Notes',),
          Divider(),
          _createDrawerItem(icon: Icons.collections_bookmark, text: 'Steps'),
          _createDrawerItem(icon: Icons.face, text: 'Authors'),
          _createDrawerItem(
              icon: Icons.account_box, text: 'Flutter Documentation'),
          _createDrawerItem(icon: Icons.stars, text: 'Useful Links'),
          Divider(),
          _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

Widget _createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image:  AssetImage('assets/images/logo.png'))),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Sukham",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}


getTitleText(String title) => Text(
  title,
  style: TextStyle(
    color: Colors.black,
    fontSize: 20,
  ),
);

getSenderView(CustomClipper clipper, BuildContext context) => ChatBubble(
  clipper: clipper,
  alignment: Alignment.topRight,
  margin: EdgeInsets.fromLTRB(20,20,20,20),
  backGroundColor: Colors.blue,
  child: Container(
    constraints: BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width * 0.7,
    ),
    child: Text(
      "We are one of the best massage Center in Bhubaneswar with high quality massage services We provide authentic Kerala and Thai massage services. We also provide home massage services to both male and female clients.",
      style: TextStyle(color: Colors.white),
    ),
  ),
);

getReceiverView(CustomClipper clipper, BuildContext context) => ChatBubble(
  clipper: clipper,
  backGroundColor: Color(0xffE7E7ED),
  margin: EdgeInsets.fromLTRB(20,0,20,20),
  child: Container(
    constraints: BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width * 0.7,
    ),
    child: Text(
      "Wow !! Need to try it. When can I take the appointment?",
      style: TextStyle(color: Colors.black),
    ),
  ),
);


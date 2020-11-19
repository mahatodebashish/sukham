import 'dart:io';

import 'package:Sukham/screens/navdrawer.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  static const String routeName  = '/contact';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer:  NavDrawer(),
      appBar: new AppBar(
        title: new Text('Contact Us'),
      ),
      body:   Container(

          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.fromLTRB(20,40,20,40),
          constraints: BoxConstraints.expand(
              height: double.infinity
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xFFDCDCDC),
                  offset: Offset(1.0, 9.0),
                  blurRadius:9.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(

                child: CircleAvatar(
                  radius: 83,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/images/logo.png'),
                    backgroundColor: Colors.white,
                  ),
                )
                ),
                SizedBox(height: 20),
                Text(
                  'Sukham Kerala & Thai Massage Center',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.norican(
                    textStyle: Theme.of(context).textTheme.display1,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Colors.black
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     GestureDetector(
                       onTap: (){
                         navigateTo(20.281143,85.803606);
                       },
                       child: Icon(
                        Icons.map,
                        color: Colors.green,
                        size: 30.0,
                    ),
                     ),
                    Text(

                      '   Sita Devi Niivas 216/594,Paik Nagar,\nBhubaneswar-751003 Odisha,India',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.oswald(
                        textStyle: Theme.of(context).textTheme.display1,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Colors.black54
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    GestureDetector(
                      onTap: (){
                        launch("tel://8480233423");
                      },
                      child: Container(

                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xFFDCDCDC),
                                offset: Offset(1.0, 9.0),
                                blurRadius:9.0,
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.call,
                            color: Colors.green,
                            size: 60.0,),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: (){
                        launchWhatsApp( phone: '+919938579108', message: 'Hi Sukham');
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xFFDCDCDC),
                                offset: Offset(1.0, 9.0),
                                blurRadius:9.0,
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset('assets/images/whatsapp.png',height: 10,width: 10),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: (){
                      _launchURL('info@sukham.co.in', 'Hi Sukham', '');
                      },
                      child: Container(

                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xFFDCDCDC),
                                offset: Offset(1.0, 9.0),
                                blurRadius:9.0,
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.email,
                            color: Colors.green,
                            size: 60.0,),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )

      ),
    );
  }
}

void navigateTo(double lat, double lng) async {
var uri = Uri.parse("google.navigation:q=$lat,$lng&mode=d");
if (await canLaunch(uri.toString())) {
await launch(uri.toString());
} else {
throw 'Could not launch ${uri.toString()}';
}
}

_launchURL(String toMailId, String subject, String body) async {
  var url = 'mailto:$toMailId?subject=$subject&body=$body';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void launchWhatsApp(
    {@required String phone,
      @required String message,
    }) async {
  String url() {
    if (Platform.isIOS) {
      return "whatsapp://wa.me/$phone/?text=${Uri.parse(message)}";
    } else {
      return "whatsapp://send?phone=$phone&text=${Uri.parse(message)}";
    }
  }

  if (await canLaunch(url())) {
    await launch(url());
  } else {
    throw 'Could not launch ${url()}';
  }
}


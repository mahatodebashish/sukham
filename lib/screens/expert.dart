import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navdrawer.dart';

class Expert extends StatelessWidget {
  static const String routeName  = '/expert';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer:  NavDrawer(),
      appBar: new AppBar(
        title: new Text('Expert'),
      ),
      body:   Container(

          child: SingleChildScrollView(
            child: Column(

              children: [
                SizedBox(height: 30),
                Container(

                    child: CircleAvatar(
                      radius: 120,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 120,
                        backgroundImage: AssetImage('assets/images/ranjit.jpg'),
                        backgroundColor: Colors.white,
                      ),
                    )
                ),
                SizedBox(height: 20),
                Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                    width: MediaQuery.of(context).copyWith().size.width ,
                    height: MediaQuery.of(context).copyWith().size.height ,
                    decoration: new BoxDecoration(

                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                            topLeft:  const  Radius.circular(90.0),
                            topRight: const  Radius.circular(0.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          /*color: Color(0xffF90CC3),*/
                          color:Colors.black12,
                          offset: Offset(1.0,-5.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(

                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Ranjit Parida',
                              style: GoogleFonts.dancingScript(
                                textStyle: Theme.of(context).textTheme.display1,
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                color: Colors.black
                              ),

                            ),
                          ),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "He is certified Therapist in 'Ayurvedic Oil Massage' having 10 years of experience. He is skilled & proficient in Reduction or elimination of pain, Fat & abs reduction, Better blood circulation, Preventing early aging, Tightening Massage.",
                              style: GoogleFonts.oswald(
                                textStyle: Theme.of(context).textTheme.display1,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                color: Colors.grey
                              ),

                            ),
                          ),
                          SizedBox(height: 30),
                          Image.asset('assets/images/certificatecopy.jpg'),
                          SizedBox(height: 30),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Follow him at',
                              style: GoogleFonts.itim(
                                  textStyle: Theme.of(context).textTheme.display1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.blue
                              ),

                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              GestureDetector(
                                onTap: (){
                                  //launch("tel://8480233423");
                                },
                                child: Container(

                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.facebook,
                                      size: 60,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              GestureDetector(
                                onTap: (){
                                  //launchWhatsApp( phone: '+919938579108', message: 'Hi Sukham');
                                },
                                child: Container(

                                  child:FaIcon(
                                    FontAwesomeIcons.twitter,
                                    size: 60,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              GestureDetector(
                                onTap: (){
                                 // _launchURL('info@sukham.co.in', 'Hi Sukham', '');
                                },
                                child: Container(

                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.youtube,
                                      size: 60,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                  ),

              ],
            ),
          )

      ),
    );
  }
}
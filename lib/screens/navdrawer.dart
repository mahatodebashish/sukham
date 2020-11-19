import 'package:flutter/material.dart';
import 'package:share/share.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
// Add a ListView to the drawer. This ensures the user can scroll
// through the options in the drawer if there isn't enough vertical
// space to fit everything.
      child: ListView(
// Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(

              child: Image.asset('assets/images/logo.png')),

          ListTile(
            title: Text('HOME', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text(
                'OUR SERVICES', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/services');
            },
          ),
         
          ListTile(
            title: Text(
                'EXPERT', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
            // Update the state of the app
          // ...
          // Then close the drawer
              Navigator.pop(context);

              Navigator.pushReplacementNamed(context, '/expert');
            },
          ),
          ListTile(
            title: Text('SHARE APP', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer
              Navigator.pop(context);
              _onShare(context);
            },
          ),
          ListTile(
            title: Text('BLOG', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
            // Update the state of the app
            //  ...
            // Then close the drawer
              Navigator.pop(context);
             // Navigator.pushReplacementNamed(context, '/blog');
              Navigator.pushNamed(context, '/blog');
            },
          ),
          ListTile(
            title: Text(
                'CONTACT US', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              // To add transition we are using PageRouteBuilder
              /*   Navigator.of(context).push(
                  new PageRouteBuilder(
                      pageBuilder: (BuildContext context, _, __) {
                        return new ContactUs();
                      },
                      transitionsBuilder: (_, Animation<double> animation, __,
                          Widget child) {
                        return new FadeTransition(
                            opacity: animation,
                            child: child
                        );
                      }
                  )
              );*/

              Navigator.pushReplacementNamed(context, '/contact');
            },
          ),
        ],
      ),
    );
  }
}

  _onShare(BuildContext context) async {
        // A builder is used to retrieve the context immediately
        // surrounding the RaisedButton.
        //
        // The context's `findRenderObject` returns the first
        // RenderObject in its descendent tree when it's not
        // a RenderObjectWidget. The RaisedButton's RenderObject
        // has its position and size after it's built.
      final RenderBox box = context.findRenderObject();


          await Share.share('Experience Massage with Sukham download the app for Home Service.. https://play.google.com/store/apps/details?id=com.sukham.health',
              subject: 'Have u tried Massage ?',
              sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);

}
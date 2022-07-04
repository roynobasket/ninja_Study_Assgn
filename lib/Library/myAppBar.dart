import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
class myAppBar extends StatefulWidget {
  @override
   _myAppBarState createState() => _myAppBarState();
}

class _myAppBarState extends State<myAppBar> {
//colors begin
  Color kPrimaryColor = const Color(0xFFf1e6ff);
  Color kSecondaryColor = const Color(0xFFf1e6ff);
  Color kContentColorLightTheme = const Color(0xff1d1d35);
  Color kContentColorDarkTheme = const Color(0xfff5fcf9);

//colors end
  @override
  Widget build(BuildContext context) {

    return
        Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(

                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Message',
                    onPressed: (){

                    },
                  ),
                  GButton(
                    icon: LineIcons.heart,
                    text: 'Likes',
                    onPressed: (){},
                  ),
                  GButton(
                    icon: LineIcons.search,
                    text: 'Search',
                    onPressed: (){},
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                    onPressed: (){},
                  ),
                ],

              ),
            ),
          ),
        );

  }



}
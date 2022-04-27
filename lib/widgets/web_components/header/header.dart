
import 'package:flutter/material.dart';
import 'package:flutter_web_page_one/values/responsive_app.dart';
import 'package:flutter_web_page_one/values/string_app.dart';
import 'package:flutter_web_page_one/widgets/web_components/header/header_button.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  
  final double opacity;

  Header(this.opacity);

  @override
  State<Header> createState() => _HeaderState();

  Size get preferredSize => Size.fromHeight(kToolbarHeight);


}

class _HeaderState extends State<Header> {
  
  ResponsiveApp responsiveApp;
  
  @override
  Widget build(BuildContext context) {

    responsiveApp = ResponsiveApp(context);
    
    return Container(
      color: Theme.of(context).primaryColor.withOpacity(widget.opacity),
      child: Padding(
        padding: responsiveApp.edgeInsetsApp.allMediumEdgeInsets,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              shopStr,
              style: TextStyle(
                color: Colors.blueGrey[100],
                fontSize: responsiveApp.headline6,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                letterSpacing: responsiveApp.letterSpacingHeaderWidth
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: responsiveApp.barSpace1Width),
                  HeaderButton(0, aboutUsStr),
                  SizedBox(width: responsiveApp.barSpace1Width),
                  HeaderButton(1, locationStr),
                ],
              )
            ),
            HeaderButton(2, loginStr, lineIsVisible: false,),
            IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.local_grocery_store_outlined),
              splashColor: Colors.transparent,
              onPressed: (){}
            )
          ],
        ),
      ),
    );
  }
}
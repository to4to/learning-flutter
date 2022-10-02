import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    //const imageUrl = "https://www.interactivebrokers.com/images/web/cryptocurrency-hero.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
      
          padding: EdgeInsets.zero,
          children:  const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
      
      
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  accountName: Text("Track"),
                  accountEmail: Text("test@outs.com"),
                  currentAccountPicture: CircleAvatar(
                    
                    backgroundImage: AssetImage(
                      ("assets/image/login.png")
                    ),),
                )
                ),

                   ListTile(
                      leading:Icon(CupertinoIcons.home,color: Colors.white,),
                      title: Text("Home",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        color: Colors.white
                      ),),
                      
                       
                   ),

                    ListTile(
                      leading:Icon(CupertinoIcons.profile_circled,color: Colors.white,),
                      title: Text("Profile",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        color: Colors.white
                      ),),
                      
                       
                   ),
                    ListTile(
                      leading:Icon(CupertinoIcons.mail,color: Colors.white,),
                      title: Text("Email",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        color: Colors.white
                      ),),
                      
                       
                   )

          ],
        ),
      ),
    );
  }
}

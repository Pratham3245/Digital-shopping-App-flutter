import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      "https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("ava"),
                  accountEmail: Text("ava@gmail.com"),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

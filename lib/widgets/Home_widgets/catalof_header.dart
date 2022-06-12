import 'package:flutter/cupertino.dart';
import 'package:myapplicationone/pages/login.dart';
import 'package:myapplicationone/utils/routs.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import '../../provider/google_sign_in.dart';
import '../../widgets/theme.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ElevatedButton(
        //   style: ButtonStyle(
        //       backgroundColor: MaterialStateProperty.all(MyTheme.creamcolor),
        //       shape: MaterialStateProperty.all(StadiumBorder())),
        //   onPressed: () {
        //     signOutGoogle();
        //     // Navigator.pushNamed(context, MyRouts.login);
        //     Navigator.of(context).pushAndRemoveUntil(
        //         MaterialPageRoute(builder: (context) {
        //       return MyLogin();
        //     }), ModalRoute.withName('/'));
        //   },
        //   child: CircleAvatar(
        //       child: Icon(
        //     Icons.logout,
        //   )).wh10(context),
        // ).pOnly(left: 240),
        InkWell(
          onTap: () {
            signOutGoogle();
            Navigator.pushNamed(context, MyRouts.login);
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) {
              return MyLogin();
            }), ModalRoute.withName('/'));
          },
          child: CircleAvatar(
            backgroundColor: MyTheme.bluecolor,
            child: Icon(
              CupertinoIcons.square_arrow_left,
              color: Colors.white,
            ),
          ).pOnly(left: 270),
        ),
        "Catalog App".text.xl5.bold.color(context.theme.accentColor).make(),
        "Trending Products".text.xl2.make(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

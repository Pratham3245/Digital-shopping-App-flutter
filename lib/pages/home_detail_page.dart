// ignore: import_of_legacy_library_into_null_safe
import 'package:myapplicationone/models/catalog.dart';
import 'package:myapplicationone/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class HomeDetail extends StatelessWidget {
  final Item catalog;

  const HomeDetail({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.bluecolor,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.make(),
            ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.bluecolor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    onPressed: () {},
                    child: "Buy".text.make())
                .wh(100, 50)
          ],
        ).p32(),
      ),
      backgroundColor: MyTheme.creamcolor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).py8(),
            Expanded(
                child: VxArc(
                    height: 30.0,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Container(
                      color: Colors.white,
                      width: context.screenWidth,
                      child: Column(
                        children: [
                          catalog.name.text.bold.xl4
                              .color(MyTheme.bluecolor)
                              .make(),
                          catalog.dec.text
                              .textStyle(context.captionStyle)
                              .xl
                              .make(),
                          10.heightBox,
                        ],
                      ).py64(),
                    )))
          ],
        ),
      ),
    );
  }
}

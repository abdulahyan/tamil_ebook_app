import 'package:ebooks/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBarWidget extends StatefulWidget {
  String title;
  bool hasBackButton;
  bool transparent;
  TopBarWidget({Key key, this.title, this.hasBackButton = false, this.transparent = false}) : super(key: key);
  @override
  _TopBarWidgetState createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
          color: this.widget.transparent ? Colors.transparent : Theme.of(context).accentColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22))),
      child: Padding(
        padding: EdgeInsets.only(top: 25),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                this.widget.hasBackButton
                    ? new IconButton(
                        icon: new SvgPicture.asset("assets/svgs/back.svg", color: Theme.of(context).primaryColor),
                        onPressed: () => Navigator.of(context).pop(),
                      )
                    : SizedBox(
                        height: 0,
                      ),
                ButtonTheme(
                  minWidth: 30,
                  child: TextButton(
                    child: SvgPicture.asset(
                      "assets/svgs/search.svg",
                      color: Theme.of(context).primaryColor,
                      width: 18,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => SEarchPage("home")));
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(5))
                    ),
                    // padding: EdgeInsets.all(5),
                  ),
                  // padding: EdgeInsets.all(5),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

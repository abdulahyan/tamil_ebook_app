import 'package:ebooks/elements/TopBarWidget.dart';
import 'package:ebooks/models/book.dart';
import 'package:ebooks/screens/player.dart';
import 'package:ebooks/screens/unlockpurch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailedBook extends StatefulWidget {
  Book book;
  DetailedBook(this.book);
  @override
  _DetailedBookState createState() => _DetailedBookState(this.book);
}

class _DetailedBookState extends State<DetailedBook> {
  Book book;
  var sizeW;
  var sizeH;
  _DetailedBookState(this.book);
  @override
  Widget build(BuildContext context) {
    sizeH = MediaQuery.of(context).size.height;
    sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: <Widget>[TopBarWidget(title: 'Book Details', hasBackButton: true), details()],
    ));
  }

  details() {
    return Expanded(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 14.4,
          ),
          imageview(),
          SizedBox(
            height: 7,
          ),
          Text(
            book.title,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            book.author,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(
            height: 7.2,
          ),
          book.purchasedate != ""
              ? Text(
                  book.purchasedate,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              : Align(
                  alignment: AlignmentDirectional.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SmoothStarRating(
                          allowHalfRating: false,
                          starCount: 5,
                          rating: book.rate,
                          size: 20.0,
                          color: Theme.of(context).accentColor,
                          borderColor: Theme.of(context).accentColor,
                          spacing: 0.0),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        book.rate.toString(),
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
          book.recommendation != "v"
              ? Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: EdgeInsets.only(top: 14.4, left: 14.4),
                    child: Container(
                      padding: EdgeInsets.only(left: 7.2),
                      decoration: BoxDecoration(
                          border: Border(left: BorderSide(color: Theme.of(context).accentColor, width: 5))),
                      child: Text(
                        "Recommendation",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              : SizedBox(
                  height: 7.2,
                ),
          SizedBox(
            height: 7.2,
          ),
          book.recommendation != "v"
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: sizeW * 0.04),
                  child: Text(book.recommendation),
                )
              : SizedBox(
                  height: 7.2,
                ),
          book.audiointroduction != "v"
              ? Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: EdgeInsets.only(top: sizeW * 0.04, left: sizeW * 0.04),
                    child: Container(
                      padding: EdgeInsets.only(left: 7.2),
                      decoration: BoxDecoration(
                          border: Border(left: BorderSide(color: Theme.of(context).accentColor, width: 5))),
                      child: Text(
                        "Audio Introduction",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              : SizedBox(
                  height: 7.2,
                ),
          SizedBox(
            height: 7.2,
          ),
          book.audiointroduction != "v"
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.4),
                  child: Text(book.audiointroduction),
                )
              : SizedBox(
                  height: 7.2,
                ),
          book.bookintroduction != "v"
              ? Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: EdgeInsets.only(top: 14.4, left: 14.4),
                    child: Container(
                      padding: EdgeInsets.only(left: 7.2),
                      decoration: BoxDecoration(
                          border: Border(left: BorderSide(color: Theme.of(context).accentColor, width: 5))),
                      child: Text(
                        "Book Introduction",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              : SizedBox(
                  height: 7.2,
                ),
          SizedBox(
            height: 7.2,
          ),
          book.bookintroduction != "v"
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.4),
                  child: Text(book.bookintroduction),
                )
              : SizedBox(
                  height: 7.2,
                ),
          Padding(
            padding: EdgeInsets.only(left: 28.8, right: 28.8, bottom: 36, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(boxShadow: <BoxShadow>[
                      BoxShadow(
                          offset: Offset(0.0, 0.5),
                          blurRadius: 6.0,
                          color: Theme.of(context).hintColor.withOpacity(0.12)),
                    ], color: Theme.of(context).primaryColor, borderRadius: BorderRadius.all(Radius.circular(100))),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/svgs/comment.svg",
                          color: Theme.of(context).accentColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "1.2k ",
                          style: TextStyle(color: Theme.of(context).accentColor),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    decoration: BoxDecoration(boxShadow: <BoxShadow>[
                      BoxShadow(
                          offset: Offset(0.0, 0.5),
                          blurRadius: 6.0,
                          color: Theme.of(context).hintColor.withOpacity(0.12)),
                    ], color: Theme.of(context).primaryColor, borderRadius: BorderRadius.all(Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          color: Theme.of(context).accentColor,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "870",
                          style: TextStyle(color: Theme.of(context).accentColor),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(boxShadow: <BoxShadow>[
                        BoxShadow(
                            offset: Offset(0.0, 0.5),
                            blurRadius: 6.0,
                            color: Theme.of(context).hintColor.withOpacity(0.12)),
                      ], color: Theme.of(context).primaryColor, borderRadius: BorderRadius.all(Radius.circular(100))),
                      height: 50,
                      child: SizedBox(
                        height: 10,
                        width: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/svgs/share.svg",
                              color: Theme.of(context).accentColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "653 ",
                              style: TextStyle(color: Theme.of(context).accentColor),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  imageview() {
    return Align(
      alignment: AlignmentDirectional.center,
      child: Stack(
        children: <Widget>[
          Container(
            width: 162,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
                image: DecorationImage(image: AssetImage(book.image), fit: BoxFit.cover)),
            height: 216,
          ),
          Container(
            width: 162,
            height: 237.6,
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: (book.price != 0)
                  ? ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Theme.of(context).accentColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                        padding: MaterialStateProperty.all(EdgeInsets.all(0))
                      ),
                      //padding: EdgeInsets.all(0),
                      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      //color: Theme.of(context).accentColor,
                      child: book.purchasedate != ""
                          ? Text(
                              "Listen",
                              style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12),
                            )
                          : Text(
                              "\$${book.price}",
                              style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16),
                            ),
                      onPressed: () {
                        book.purchasedate != ""
                            ? Navigator.push(context, MaterialPageRoute(builder: (_) => PlayerPage(this.book)))
                            : Navigator.push(context, MaterialPageRoute(builder: (_) => UnlockPurchasedPage()));
                      },
                    )
                  : SizedBox(height: 0),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:ebooks/models/book.dart';
import 'package:ebooks/screens/literature.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FeaturedBooksItem extends StatelessWidget {
  const FeaturedBooksItem({
    Key key,
    @required Book book,
  })  : book = book,
        super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Container(
              width: 122,
              height: 165,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(image: AssetImage(this.book.image), fit: BoxFit.cover)),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                height: 130,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          offset: Offset(0, 3.0),
                          blurRadius: 10.0,
                          color: Theme.of(context).hintColor.withOpacity(0.09)),
                    ],
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), topRight: Radius.circular(5))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        this.book.title + this.book.title,
                        maxLines: 2,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      this.book.author,
                      style: TextStyle(fontSize: 12),
                    ),
                    Row(
                      children: <Widget>[
                        SmoothStarRating(
                            allowHalfRating: false,
                            starCount: 5,
                            rating: this.book.rate,
                            size: 20.0,
                            color: Theme.of(context).accentColor,
                            borderColor: Theme.of(context).accentColor,
                            spacing: 0.0),
                        SizedBox(
                          width: 3,
                        ),
                        Text(" ${this.book.rate.toString()}"),
                        Expanded(
                          child: Text(
                            "\$ ${this.book.price.toString()}",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Theme.of(context).accentColor, fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Literature(this.book))),
    );
  }
}

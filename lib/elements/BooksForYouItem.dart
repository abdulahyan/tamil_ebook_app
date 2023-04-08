import 'package:ebooks/models/book.dart';
import 'package:ebooks/screens/literature.dart';
import 'package:flutter/material.dart';

class BooksForYouItem extends StatelessWidget {
  const BooksForYouItem({
    Key key,
    @required Book book,
  })  : book = book,
        super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Literature(this.book))),
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(5)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      offset: Offset(0.0, 4.0), blurRadius: 10.0, color: Theme.of(context).hintColor.withOpacity(0.1)),
                ],
              ),
              margin: EdgeInsets.symmetric(vertical: 14),
              width: 190,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 246,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                        image: DecorationImage(image: AssetImage(this.book.image), fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              this.book.title,
                              maxLines: 1,
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Text(
                              this.book.author,
                              maxLines: 1,
                              textAlign: TextAlign.end,
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                          mainAxisSize: MainAxisSize.max,
                        ),
                        Text(
                          "\$ ${this.book.price}",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

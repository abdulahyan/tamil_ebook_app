import 'package:ebooks/api_services.dart';
import 'package:ebooks/elements/FeaturedBooksItem.dart';
import 'package:ebooks/elements/TopBarWidget.dart';
import 'package:ebooks/models/book.dart';
import 'package:flutter/material.dart';

class SelectedLibrary extends StatefulWidget {
  int idOfSelectedField;
  SelectedLibrary(this.idOfSelectedField);
  @override
  _SelectedLibraryState createState() => _SelectedLibraryState(this.idOfSelectedField);
}

class _SelectedLibraryState extends State<SelectedLibrary> {
  int idOfSelectedField;
  //this books list should be list of book which include in my library for specific passed field
  List<Book> _featured = new List();
  value values = new value();
  _SelectedLibraryState(this.idOfSelectedField);
  @override
  void initState() {
    super.initState();
    _featured = values.featuredd;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBarWidget(
            title: 'My Library',
            hasBackButton: true,
          ),
          selectedBooks()
        ],
      ),
    );
  }

  selectedBooks() {
    return Expanded(
      child: ListView.builder(
        itemCount: _featured.length,
        itemBuilder: (context, index) {
          return FeaturedBooksItem(book: _featured[index]);
        },
      ),
    );
  }
}

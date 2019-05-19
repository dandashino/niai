import 'package:flutter/material.dart';
import 'package:niai/models/models.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'kanji_view.dart';

class KanjiListView extends StatelessWidget {
  final Kanji kanji;

  const KanjiListView(
    this.kanji, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: Container(
        color: Theme.of(context).backgroundColor,
        padding: EdgeInsets.all(8),
        alignment: Alignment.centerLeft,
        child: Text(
          kanji.character,
          style: TextStyle(color: Colors.white),
        ),
      ),
      content: Column(
        children: <Widget>[
          KanjiView(kanji, original: true),
          for (var item in kanji.similar) KanjiView(item),
        ],
      ),
    );
  }
}

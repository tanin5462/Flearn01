import 'package:flutter/material.dart';

class TypographyList extends StatelessWidget {
  //Widget

  Widget buttonList(context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Button'),
            width: 80,
          ),
          Text(
            'MEDIUM (ALL CAPS) 14sp',
            style: Theme.of(context).textTheme.button,
          ),
        ],
      ),
    );
  }

  Widget captionList(context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Caption'),
            width: 80,
          ),
          Text(
            'Regular 12sp',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }

  Widget body1List(context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Body 1'),
            width: 80,
          ),
          Text(
            'Regular 14sp',
            style: Theme.of(context).textTheme.body1,
          ),
        ],
      ),
    );
  }

  Widget body2List(context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Body 2'),
            width: 80,
          ),
          Text(
            'Medium 14sp',
            style: Theme.of(context).textTheme.body2,
          ),
        ],
      ),
    );
  }

  Widget subheadingList(context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Subheading'),
            width: 80,
          ),
          Text(
            'Regular 16sp',
            style: Theme.of(context).textTheme.subhead,
          ),
        ],
      ),
    );
  }

  Widget titleList(context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Title'),
            width: 80,
          ),
          Text(
            'Medium 20sp',
            style: Theme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }

  Widget headlineList(context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Headline'),
            width: 80,
          ),
          Text(
            'Regular 24sp',
            style: Theme.of(context).textTheme.headline,
          ),
        ],
      ),
    );
  }

  Widget display1List(context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Display 1'),
            width: 80,
          ),
          Text(
            'Regular 34sp',
            style: Theme.of(context).textTheme.display1,
          ),
        ],
      ),
    );
  }

  Widget display2List(context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 80,
            child: Text('Display 2'),
          ),
          Flexible(
            child: Text(
              'Regular 45sp',
              style: Theme.of(context).textTheme.display2,
            ),
          ),
        ],
      ),
    );
  }

  Widget display3List(context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 80,
            child: Text('Display 3'),
          ),
          Flexible(
            child: Text(
              'Regular 56sp',
              style: Theme.of(context).textTheme.display3,
            ),
          ),
        ],
      ),
    );
  }

  Widget boxspace() {
    return Container(
      width: 10,
      height: 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Typography'),
        backgroundColor: Colors.blue[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            display3List(context),
            boxspace(),
            display2List(context),
            boxspace(),
            display1List(context),
            boxspace(),
            headlineList(context),
            boxspace(),
            titleList(context),
            boxspace(),
            subheadingList(context),
            boxspace(),
            body1List(context),
            boxspace(),
            body2List(context),
            boxspace(),
            captionList(context),
            boxspace(),
            buttonList(context),
            boxspace(),
          ],
        ),
      ),
    );
  }
}

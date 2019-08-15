import 'package:flutter/material.dart';

class ColorList extends StatelessWidget {
  Widget redShow(context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.red[50],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text('50'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Text('#FFFFBEE'),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.red[100],
              child: Text('100'),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.red[200],
              child: Text('200'),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.red[300],
              child: Text('300'),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.red[400],
              child: Text(
                '400',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.red[500],
              child: Text(
                '500',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget redList() {
    return Container(
      child: Tab(
        text: 'RED',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Colors'),
          bottom: TabBar(
            isScrollable: true,
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            tabs: <Widget>[
              redList(),
              redList(),
              redList(),
              redList(),
              redList(),
              redList(),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            redShow(context),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

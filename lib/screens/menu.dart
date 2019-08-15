import 'package:flutter/material.dart';
import 'package:flutter_learning_01/screens/stylemenu.dart';

class Menupage extends StatelessWidget {
  //Widget

  Widget mediaIcon(context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      child: Column(
        children: <Widget>[
          Icon(
            Icons.slideshow,
            size: 60,
            color: Colors.indigo[900],
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'Media',
              style: TextStyle(
                fontSize: 20,
                color: Colors.indigo[900],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget row3(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          mediaIcon(context),
        ],
      ),
    );
  }

  Widget cupertinoIcon(context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      child: Column(
        children: <Widget>[
          Icon(
            Icons.stay_current_portrait,
            size: 60,
            color: Colors.indigo[900],
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'Cupertino',
              style: TextStyle(
                fontSize: 20,
                color: Colors.indigo[900],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget materialIcon(context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      child: Column(
        children: <Widget>[
          Icon(
            Icons.settings_cell,
            size: 60,
            color: Colors.indigo[900],
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'Material',
              style: TextStyle(
                fontSize: 20,
                color: Colors.indigo[900],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget row2(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          materialIcon(context),
          cupertinoIcon(context),
        ],
      ),
    );
  }

  Widget styleIcon(context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * .5,
        child: Column(
          children: <Widget>[
            Icon(
              Icons.font_download,
              size: 60,
              color: Colors.indigo[900],
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'Style',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo[900],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) => StyleMenu());
        Navigator.of(context).push(materialPageRoute);
      },
    );
  }

  Widget studiesIcon(context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      child: Column(
        children: <Widget>[
          Icon(
            Icons.devices_other,
            size: 60,
            color: Colors.indigo[900],
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'Studies',
              style: TextStyle(
                fontSize: 20,
                color: Colors.indigo[900],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget row1(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          studiesIcon(context),
          styleIcon(context),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'images/flutter.png',
            ),
          ),
        ),
        title: Text('Flutter gallery'),
      ),
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            row1(context),
            row2(context),
            row3(context),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_learning_01/screens/color.dart';
import 'package:flutter_learning_01/screens/typography.dart';

class StyleMenu extends StatelessWidget {
  //Widget
  Widget typographyList(context) {
    return ListTile(
        leading: Icon(
          Icons.format_color_text,
          size: 36,
          color: Colors.indigo[900],
        ),
        title: Text('Typography'),
        subtitle: Text('All of the predefined text styles'),
        onTap: () {
          MaterialPageRoute materialPageRoute = MaterialPageRoute(
              builder: (BuildContext context) => TypographyList());
          Navigator.of(context).push(materialPageRoute);
        });
  }

  Widget colorList(context) {
    return ListTile(
      leading: Icon(
        Icons.palette,
        size: 36,
        color: Colors.indigo[900],
      ),
      title: Text('Colors'),
      subtitle: Text('All of the predefined colors'),
      onTap: () {
        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) => ColorList());
        Navigator.of(context).push(materialPageRoute);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Style'),
      ),
      body: ListView(
        children: <Widget>[
          colorList(context),
          typographyList(context),
        ],
      ),
    );
  }
}

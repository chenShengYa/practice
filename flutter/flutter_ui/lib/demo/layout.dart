import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // child: Row(
        //   children: <Widget>[
        //     IconBadge(Icons.pool),
        //     IconBadge(Icons.beach_access),
        //     IconBadge(Icons.airplanemode_active),
        //   ],
        // ),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 200.0,
          child: Container(
            alignment: Alignment(-1.0, -1.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 53, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0)),
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 53, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0)),
            child: Icon(Icons.brightness_2, color: Colors.white, size: 32.0),
          ),
        )
      ],
    ));
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}

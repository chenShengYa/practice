import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerDemo();
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 16.0);

  final String _author = 'wendux';
  final String _title = 'Flutter 实战';
  @override
  Widget build(BuildContext context) {
    return Text(
      '$_title $_author  在全球，随着Flutter被越来越多的知名公司应用在自己的商业APP中，Flutter这门新技术也逐渐进入了移动开发者的视野，尤其是当Google在2018年IO大会上发布了第一个Preview版本后，国内刮起来一股学习Flutter的热潮。',
      textAlign: TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'chensheng',
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
                text: 'lalala',
                style: TextStyle(fontSize: 17.0, color: Colors.grey))
          ]),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                //局部设置
                // border: Border(
                //     top: BorderSide(
                //         color: Colors.indigoAccent[100],
                //         width: 3.0,
                //         style: BorderStyle.solid),
                //     bottom: BorderSide(
                //         color: Colors.indigoAccent[100],
                //         width: 3.0,
                //         style: BorderStyle.solid))
                border: Border.all(
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid),
                borderRadius:
                    // BorderRadius.only(
                    //   topLeft: Radius.circular(64.0),
                    //   bottomLeft: Radius.circular(64.0)
                    // )
                    BorderRadius.circular(16.0)),
          )
        ],
      ),
    );
  }
}

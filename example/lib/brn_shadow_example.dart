import 'dart:math';
import 'package:flutter/material.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';

class BrnShadowExample extends StatefulWidget {
  @override
  _BrnShadowExampleState createState() => _BrnShadowExampleState();
}

class _BrnShadowExampleState extends State<BrnShadowExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PhoenixAppBar(
        title: '阴影卡片',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            20.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '规则',
                style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const BubbleText(
                  maxLines: 2,
                  text: '头部icon需要显示主题相关的icon，线条需要时圆头\n,'
                      '线条的高度随着左侧内容变化而改变，线宽2'),
              const Text(
                '正常案例',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ShadowCard(
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                child: Container(
                  color: Colors.blue[200],
                  child: const Text(
                    '阴影卡片，\n这是内容区域',
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                '正常案例',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ShadowCard(
                color: Colors.white,
                padding: const EdgeInsets.all(4),
                child: Container(
                  color: Colors.blue[200],
                  child: const Text(
                    '小阴影卡片，这是内容区域',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color getRandomColor() {
    return Color.fromARGB(Random().nextInt(255), Random().nextInt(255),
        Random().nextInt(255), Random().nextInt(255));
  }
}

import 'package:flutter/material.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_toast/phoenix_toast.dart';

class BubbleExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PhoenixAppBar(
        title: '气泡信息',
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              '规则',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const BubbleText(
              maxLines: 3,
              text: '支持指定行数的展开收起，背景边框的圆角是4，左上角是特殊的形状，\n '
                  '文本的字号是14，颜色为深色',
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            BubbleText(
              maxLines: 2,
              text: '推荐理由：“满五唯一”“临近地铁”“首付低”，多出折行显示，文字展开的样式文式文文字展开的样式文式文。问我',
              onExpanded: (isExpanded) {
                String str = isExpanded ? "展开了" : "收起了";
                PhoenixToast.show("我$str", context);
              },
            ),
            const Text(
              '异常案例文案过长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const BubbleText(
              maxLines: 2,
              text:
                  '推荐理由：“满五唯一”“临近地铁”“首付低”，多出折行显示，文字展开的样式文。按钮的文案特别长按钮的文案特别长按钮的文案特别长按钮的文案特别长',
            ),
            const Text(
              '异常案例文案过少',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const BubbleText(
              text: '推荐理由',
            ),
            const Text(
              '异常案例文案长度为0',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const BubbleText(
              maxLines: 2,
              text: '',
            ),
          ],
        ),
      ),
    );
  }
}

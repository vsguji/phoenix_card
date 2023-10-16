/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-08-31 14:41:52
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-16 14:34:28
 * @FilePath: /phoenix_card/example/lib/content/two_text_expanded_example.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_text/phoenix_text.dart';
import 'package:phoenix_toast/phoenix_toast.dart';

class TextExpandedContentExample extends StatefulWidget {
  @override
  _TextExpandedContentExampleState createState() =>
      _TextExpandedContentExampleState();
}

class _TextExpandedContentExampleState
    extends State<TextExpandedContentExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PhoenixAppBar(
        title: '展开收起文本',
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
                  fontWeight: FontWeight.bold),
            ),
            const BubbleText(
              maxLines: 4,
              text: '显示指定行数的文本，超过的收起，点击更多会显示全部',
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            ExpandableText(
              text: '冠寓是龙湖地产的第三大主航道业务，专注做中高端租赁市场，标语是我家我自在；门店位于昌平区390号，'
                  '距离昌平线生命科学冠寓是龙湖地产的第三大主航道业务，专注做中高端租赁市场，标语是我家我自在标语是我家我自在。',
              onExpanded: (value) {
                PhoenixToast.show("当前的状态是$value", context);
              },
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}

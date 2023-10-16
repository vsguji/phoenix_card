import 'package:flutter/material.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';

import '../list_item.dart';
import 'keyvalue_align_content_example.dart';
import 'keyvalue_close_content_example.dart';
import 'number_item_example.dart';
import 'text_value_arrow_example.dart';
import 'two_rich_content_example.dart';
import 'two_text_content_example.dart';
import 'two_text_expanded_example.dart';

class TextContentEntryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PhoenixAppBar(
        title: "文本内容示例",
      ),
      body: ListView(
        children: [
          ListItem(
            title: "单列左对齐",
            isShowLine: false,
            isSupportTheme: true,
            describe: 'key宽度最多92，value是左对齐的',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return TextContentExample();
                },
              ));
            },
          ),
          ListItem(
            title: "单列紧贴着key名",
            isSupportTheme: true,
            describe: 'Value紧贴着Key，Key和value都是一行展示',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return KeyTextCloseContentExample();
                },
              ));
            },
          ),
          ListItem(
            title: "两列纯文本",
            isShowLine: false,
            isSupportTheme: true,
            describe: '两组key-value展示',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return TextRIchContentExample();
                },
              ));
            },
          ),
          ListItem(
            title: "两列复杂元素",
            isShowLine: false,
            isSupportTheme: true,
            describe: '元素中可以携带问号等',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return TwoRichContentExample();
                },
              ));
            },
          ),
          ListItem(
            title: "强化数字信息",
            isShowLine: false,
            isSupportTheme: true,
            describe: '数字是大字体',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return NumberItemRowExample();
                },
              ));
            },
          ),
          ListItem(
            title: "纯文本展示可收起",
            isShowLine: false,
            isSupportTheme: true,
            describe: '展开收起文本',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return TextExpandedContentExample();
                },
              ));
            },
          ),
          ListItem(
            title: "文本+跳转操作",
            isShowLine: false,
            describe: 'value带有跳转箭头',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return TextValueArrowContentExample();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}

/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-02-01 22:15:05
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-16 14:20:10
 * @FilePath: /phoenix_card/example/lib/bubble/bubble_entry_page.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';

import '../list_item.dart';
import 'common_bubble_example.dart';
import 'expanded_bubble_example.dart';

class BubbleEntryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PhoenixAppBar(
        title: "气泡示例",
      ),
      body: ListView(
        children: [
          ListItem(
            title: "普通气泡",
            isShowLine: false,
            describe: '通栏分割线',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return BubbleExample();
                },
              ));
            },
          ),
          ListItem(
            title: "展开收起气泡",
            describe: '左右有20dp间距的分割线',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return BubbleExample2();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}

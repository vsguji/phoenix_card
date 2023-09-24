/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-13 20:09:03
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-24 21:42:48
 * @FilePath: /phoenix_card/lib/bubble_card/insert_info.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_base/phoenix.dart';

/// 气泡背景的文本
/// 气泡：背景色为Color(0xFFF8F8F8)的灰色Container
///      右上角为不规则小三角
///
/// ```dart
///   BrnInsertInfo(
///      infoText: '在文本的右下角有更多或者收起按钮',
///   )
///
///   BrnInsertInfo(
///      infoText: '具备展开收起功能的文字面板，在文本的右下角有更多或者收起按钮',
///      maxLines: 2,
///   )
///
/// ```
///
/// 相关文本组件如下:
///  * [BrnExpandableText], 气泡背景的展开收起文本组件
///  * [BrnBubbleText], 气泡背景的文本组件
///
class BrnInsertInfo extends StatelessWidget {
  /// 显示的文本
  final String infoText;

  /// 最多显示的行数，如果实际的行数超标，就折断
  final int maxLines;

  /// create BrnInsertInfo
  const BrnInsertInfo({Key? key, required this.infoText, this.maxLines = 2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Text tx = Text(
      infoText,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: BaseThemeConfig.instance.getConfig().commonConfig.colorTextBase,
      ),
    );

    Color color = const Color(0xFFF8F8F8);
    Image image =
        PhoenixTools.getAssetImage('icons/icon_right_top_pointer.png');

    Widget bubbleText = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: color,
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4))),
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 12),
            child: tx,
          ),
        )
      ],
    );
    return ColoredBox(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          image,
          bubbleText,
        ],
      ),
    );
  }
}

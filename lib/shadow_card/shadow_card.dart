/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-13 20:09:03
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-24 21:42:11
 * @FilePath: /phoenix_card/lib/shadow_card/shadow_card.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_base/phoenix.dart';

///常见的阴影卡片，减少了冗余代码
///
///在此组件的基础上，用户可以参考[BoxShadow]的参数来合理的设置阴影效果[offset]、[spreadRadius]、[spreadRadius]
///
///和系统的[Card]组件相似，是对Container组件的封装
///
class ShadowCard extends StatelessWidget {
  ///背景色 默认Color(0xfffafafa)
  final Color color;

  ///阴影颜色 默认Color(0xffeeeeee)
  final Color shadowColor;

  ///阴影偏移量 默认是0
  final Offset offset;

  ///内边距 默认是0
  final EdgeInsetsGeometry padding;

  ///圆角 默认4.0
  final double circular;

  ///子 Widget
  final Widget child;

  ///阴影模糊程度 默认5.0
  final double blurRadius;

  ///阴影扩散程度 默认0
  final double spreadRadius;

  ///边框的宽度 默认0.5
  final double borderWidth;

  /// create BrnShadowCard
  ShadowCard(
      {required this.child,
      this.color = const Color(0xfffafafa),
      this.shadowColor = const Color(0xffeeeeee),
      this.padding = const EdgeInsets.all(0),
      this.circular = 4.0,
      this.blurRadius = 5.0,
      this.spreadRadius = 0,
      this.offset = Offset.zero,
      this.borderWidth = 0.5});

  @override
  Widget build(BuildContext context) {
    double tempBorderWidth = 0;
    if (borderWidth > 0) {
      tempBorderWidth = borderWidth;
    }
    return Container(
      padding: padding,
      child: child,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(circular)),
          border: tempBorderWidth != 0
              ? Border.all(
                  color: BaseThemeConfig.instance
                      .getConfig()
                      .commonConfig
                      .dividerColorBase,
                  width: tempBorderWidth)
              : Border.all(style: BorderStyle.none),
          boxShadow: [
            BoxShadow(
                color: shadowColor,
                offset: offset, //阴影xy轴偏移量
                blurRadius: blurRadius, //阴影模糊程度
                spreadRadius: spreadRadius //阴影扩散程度
                )
          ]),
    );
  }
}

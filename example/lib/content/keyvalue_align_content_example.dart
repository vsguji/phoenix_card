import 'dart:math';
import 'package:flutter/material.dart';
import 'package:phoenix_base/phoenix.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_toast/phoenix_toast.dart';

class TextContentExample extends StatefulWidget {
  @override
  _TextContentExampleState createState() => _TextContentExampleState();
}

class _TextContentExampleState extends State<TextContentExample> {
  late List<InfoModal> list;

  @override
  void initState() {
    super.initState();
    list = [
      InfoModal(keyPart: "名称：", valuePart: "内容内容内容内容"),
      InfoModal(keyPart: "名称名：", valuePart: "内容内容内容内容内容"),
      InfoModal(keyPart: "名称名称名：", valuePart: "内容内容内容内容内容"),
      InfoModal(keyPart: "名称名称名：", valuePart: "内容内容内容内容内容"),
      InfoModal(keyPart: "名称名称名：", valuePart: "内容内容内容内容内容"),
      InfoModal(keyPart: "名称名称名：", valuePart: "内容内容内容内容内容"),
      InfoModal(
          keyPart: "名称名称名称名称：",
          valuePart: "内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
      InfoModal.valueLastClickInfo(context, "名称名：", '内容内容内容内容内容', '可点击内容',
          clickCallback: (text) {
        PhoenixToast.show(text!, context);
      })
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PhoenixAppBar(
        title: '单列展示左对齐',
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
              text: 'key的宽度最多为92，value是左对齐的，key和value过长的时候可以换行',
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            GestureDetector(
              onTap: () {
                PhoenixToast.show('点击', context);
              },
              child: PairInfoTable(
                children: <InfoModal>[
                  InfoModal(keyPart: "名称：", valuePart: "内容内容内容内容"),
                  InfoModal(
                      keyPart: "名称名称名：",
                      valuePart: const Row(
                        children: [
                          Expanded(
                            child: Text(
                              '测试 valuevalu内容内容valuevalu内容内容',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            '2000元',
                            style: TextStyle(
                              color: Color(0xFF222222),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          )
                        ],
                      )),
                  InfoModal(
                      keyPart: "名称名称名：",
                      valuePart: const Row(
                        children: [
                          Expanded(
                            child: Text(
                              '测试 valueva',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            '2000元',
                            style: TextStyle(
                              color: Color(0xFF222222),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          )
                        ],
                      )),
                  InfoModal(
                      keyPart: "名称名称名：",
                      valuePart: const Row(
                        children: [
                          Expanded(
                            child: Text(
                              '测试 valuevalu内容内容',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            '2000元',
                            style: TextStyle(
                              color: Color(0xFF222222),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          )
                        ],
                      )),
                  InfoModal(
                      keyPart: "名称名称名：",
                      valuePart: const Row(
                        children: [
                          Expanded(
                            child: Text(
                              '测试 valuevalu内容',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            '2000元',
                            style: TextStyle(
                              color: Color(0xFF222222),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          )
                        ],
                      )),
                  InfoModal(
                      keyPart: "总费用：",
                      valuePart: const Row(
                        children: [
                          Expanded(
                            child: Text(
                              '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            '8000元',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            BrnAlignPairInfo(
              children: <InfoModal>[
                InfoModal(keyPart: "名称：", valuePart: "内容内容内容内容"),
                InfoModal(keyPart: "名称名：", valuePart: "内容内容内容内容内容"),
                InfoModal(keyPart: "名称名称名：", valuePart: "内容内容内容内容内容"),
                InfoModal(
                    keyPart: "名称名称名称名称：",
                    valuePart: "内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
              ],
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            GestureDetector(
              onTap: () {
                PhoenixToast.show('点击了卡片', context);
              },
              child: BrnAlignPairInfo(
                children: <InfoModal>[
                  InfoModal(keyPart: "名称1：", valuePart: "内容内容内容内容"),
                  InfoModal(keyPart: "名称名：", valuePart: "内容内容内容内容内容"),
                  InfoModal(keyPart: "名称名称名：", valuePart: "内容内容内容内容内容"),
                  InfoModal(
                      keyPart: "名称名称名称名称：",
                      valuePart: "内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
                  InfoModal.valueLastClickInfo(
                      context, "名称名：", '11111111', '22222222',
                      clickCallback: (text) {
                    PhoenixToast.show(text!, context);
                  }),
                ],
              ),
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            PairInfoTable(
              expandAtIndex: 3,
              isFolded: false,
              children: <InfoModal>[
                InfoModal(keyPart: "名称：", valuePart: "内容内容内容内容"),
                InfoModal(keyPart: "名称名：", valuePart: "内容内容内容内容内容"),
                InfoModal(keyPart: "名称名称名：", valuePart: "内容内容内容内容内容"),
                InfoModal(keyPart: "名称名称名：", valuePart: "内容内容内容内容内容"),
                InfoModal(keyPart: "名称名称名：", valuePart: "内容内容内容内容内容"),
                InfoModal(keyPart: "名称名称名：", valuePart: "内容内容内容内容内容"),
                InfoModal(
                    keyPart: "名称名称名称名称：",
                    valuePart: "内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
                InfoModal.valueLastClickInfo(
                    context, "名称名：", '内容内容内容内容内容', '可点击内容',
                    clickCallback: (text) {
                  PhoenixToast.show(text!, context);
                }),
              ],
            ),
            const Text(
              '正常案例：动态追加',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            Stack(
              children: <Widget>[
                BrnAlignPairInfo(
                  children: list,
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          list.add(
                            InfoModal(keyPart: "名称：", valuePart: "内容内容内容内容"),
                          );
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 30),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [
                            Colors.white.withAlpha(100),
                            Colors.white,
                            Colors.white
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        )),
                        child: Row(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.only(right: 4),
                              child: Text(
                                '更多',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF999999),
                                ),
                              ),
                            ),
                            Transform.rotate(
                                angle: pi,
                                child: PhoenixTools.getAssetImage(
                                    'icons/icon_up_arrow.png')),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            const Text(
              '正常案例：动态收起',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            Stack(
              children: <Widget>[
                BrnAlignPairInfo(
                  children: list,
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          list.removeLast();
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 30),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [
                            Colors.white.withAlpha(100),
                            Colors.white,
                            Colors.white
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        )),
                        child: Row(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.only(right: 4),
                              child: Text(
                                '收起',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF999999),
                                ),
                              ),
                            ),
                            Transform.rotate(
                                angle: pi,
                                child: PhoenixTools.getAssetImage(
                                    'icons/icon_down_arrow.png')),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            const Text(
              '异常案例：key过长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            BrnAlignPairInfo(
              children: <InfoModal>[
                InfoModal(keyPart: "名称：", valuePart: "内容内容内容内容"),
                InfoModal(keyPart: "名称名：", valuePart: "内容内容内容内容内容"),
                InfoModal(
                    keyPart: "11111111111111111111111111111111111：",
                    valuePart: "内容内容内容内容内容"),
                InfoModal(keyPart: "名称名称名：", valuePart: "内容内容内容内容内容"),
                InfoModal.valueLastClickInfo(
                    context, "名称十分的长名称十分的长名称十分的长名称十分的长：", '内容内容内容内容内容', '可点击内容',
                    clickCallback: (text) {
                  PhoenixToast.show(text!, context);
                }),
              ],
            ),
            const Text(
              '异常案例：内容过长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            BrnAlignPairInfo(
              children: <InfoModal>[
                InfoModal(
                    keyPart: "名称：",
                    valuePart: "内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
                InfoModal(keyPart: "名称名：", valuePart: "内容内容内容内容内容"),
                InfoModal(keyPart: "名称正常：", valuePart: "内容内容内容内容内容"),
                InfoModal(
                    keyPart: "名称名称名：",
                    valuePart: "内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
                InfoModal.valueLastClickInfo(
                    context,
                    "名称十分的长名称十分的长名称十分的长名称十分的长：",
                    '内容内容内容内容内容',
                    '可点击内容可点击内容可点击内容可点击内容可点击内容可点击内容', clickCallback: (text) {
                  PhoenixToast.show(text!, context);
                }),
              ],
            ),
            const Text(
              '异常案例某个元素缺失',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            BrnAlignPairInfo(
              children: <InfoModal>[
                InfoModal(keyPart: "内容缺失：", valuePart: null),
                InfoModal(keyPart: "", valuePart: "名称缺失"),
                InfoModal(keyPart: "", valuePart: ""),
                InfoModal(keyPart: "上面的都缺失：", valuePart: "内容内容内容内容内容"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

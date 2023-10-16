import 'package:flutter/material.dart';
import 'package:phoenix_base/phoenix.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';

class TextRIchContentExample extends StatefulWidget {
  @override
  _TextRIchContentExampleState createState() => _TextRIchContentExampleState();
}

class _TextRIchContentExampleState extends State<TextRIchContentExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PhoenixAppBar(
        title: '两列纯文本',
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
              text: '两组key-value内容平分屏幕，每一组key-value都是一行展示，'
                  'value紧挨着key，不考虑对齐',
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            RichInfoGrid(
              pairInfoList: <RichGridInfo>[
                RichGridInfo("名称名称：", '内容内容内容内容'),
                RichGridInfo("名称：", '内容内容内容'),
                RichGridInfo("名称：", '内容内容'),
                RichGridInfo("名称：", '内容'),
              ],
            ),
            const Text(
              '异常案例：key过长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            RichInfoGrid(
              pairInfoList: <RichGridInfo>[
                RichGridInfo("名称名称名称名称名称名称名称名称：", '内容内容内容内容'),
                RichGridInfo("名称：", '内容内容内容'),
                RichGridInfo("名称：", '内容内容'),
                RichGridInfo("名称：", '内容'),
              ],
            ),
            const Text(
              '异常案例：内容过长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            RichInfoGrid(
              pairInfoList: <RichGridInfo>[
                RichGridInfo("名称名称：", '内容内容内容内容'),
                RichGridInfo("名称：", '内容内容内容内容内容内容内容内容内容内容内容'),
                RichGridInfo("名称：", '内容内容'),
                RichGridInfo("名称：", '内容'),
              ],
            ),
            const Text(
              '异常案例：Key和Value过长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            RichInfoGrid(
              rowSpace: 10,
              pairInfoList: <RichGridInfo>[
                RichGridInfo("名称名称：", null),
                RichGridInfo("名称名称名称名称名称名称名称名称名称：", '内容内容内容内容内容内容内容内容内容内容内容'),
                RichGridInfo("名称：", '内容内容'),
                RichGridInfo("名称：", ''),
              ],
            ),
            const Text(
              '特殊案例：Padding中',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: RichInfoGrid(
                rowSpace: 10,
                pairInfoList: <RichGridInfo>[
                  RichGridInfo("名称名称：", null),
                  RichGridInfo("名称名称名称名称名称名称名称名称名称：", '内容内容内容内容内容内容内容内容内容内容内容'),
                  RichGridInfo("名称：", '内容内容'),
                  RichGridInfo("名称：", ''),
                ],
              ),
            ),
            const Text(
              '特殊案例：Row中',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            Row(
              children: <Widget>[
                const Text("我是自定义"),
                Expanded(
                  child: RichInfoGrid(
                    rowSpace: 10,
                    pairInfoList: <RichGridInfo>[
                      RichGridInfo("名称名称：", null),
                      RichGridInfo(
                          "名称名称名称名称名称名称名称名称名称：", '内容内容内容内容内容内容内容内容内容内容内容'),
                      RichGridInfo("名称：", '内容内容'),
                      RichGridInfo("名称：", ''),
                    ],
                  ),
                ),
              ],
            ),
            const Text(
              '特殊案例：Column中',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            Column(
              children: <Widget>[
                RichInfoGrid(
                  rowSpace: 10,
                  pairInfoList: <RichGridInfo>[
                    RichGridInfo("名称名称：", null),
                    RichGridInfo(
                        "名称名称名称名称名称名称名称名称名称：", '内容内容内容内容内容内容内容内容内容内容内容'),
                    RichGridInfo("名称：", '内容内容'),
                    RichGridInfo("名称：", ''),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Pad 案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey[100],
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
                child: Column(
                  children: <Widget>[
                    PairInfoTable(
                      children: <InfoModal>[
                        InfoModal(keyPart: "名称：", valuePart: "加粗的内容，文字样式可配置"),
                        InfoModal(keyPart: "名称名：", valuePart: "没加粗的内容"),
                        InfoModal(keyPart: "名称名称名：", valuePart: "内容内容内容内容内容"),
                        InfoModal(
                          keyPart: "名称名称名称名称：",
                          valuePart: "内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容",
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichInfoGrid(
                      themeData: PairRichInfoGridConfig(
                          keyTextStyle: BaseTextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff999999)),
                          valueTextStyle: BaseTextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff999999),
                          )),
                      rowSpace: 10,
                      pairInfoList: <RichGridInfo>[
                        RichGridInfo("正常的名称：", '正常的内容'),
                        RichGridInfo(
                            "名称名称名称名称名称名称名称名称名称：", '内容内容内容内容内容内容内容内容内容内容内容'),
                        RichGridInfo("名称：", '内容内容内容内容内容内容内容内容内容内容内容内容'),
                        RichGridInfo("名称：", ''),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichInfoGrid(
                      rowSpace: 10,
                      pairInfoList: <RichGridInfo>[
                        RichGridInfo("加粗的名称：", '加粗的内容'),
                        RichGridInfo(
                            "名称名称名称名称名称名称名称名称名称：", '内容内容内容内容内容内容内容内容内容内容内容'),
                        RichGridInfo("名称：", '内容内容内容内容内容内容内容内容内容内容内容内容'),
                        RichGridInfo("名称：", ''),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

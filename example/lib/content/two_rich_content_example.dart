import 'package:flutter/material.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_toast/phoenix_toast.dart';

class TwoRichContentExample extends StatefulWidget {
  @override
  _TwoRichContentExampleState createState() => _TwoRichContentExampleState();
}

class _TwoRichContentExampleState extends State<TwoRichContentExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PhoenixAppBar(
        title: '两列复杂文本',
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
                RichGridInfo("名称：", '内容内容内容内容'),
                RichGridInfo("名称：", '内容内容内容'),
                RichGridInfo("名称：", '内容内容'),
                RichGridInfo.valueLastClickInfo(context, '名称', '内容内容',
                    keyQuestionCallback: (value) {
                  PhoenixToast.show(value, context);
                }),
                RichGridInfo.valueLastClickInfo(context, '名称', '内容内容',
                    valueQuestionCallback: (value) {
                  PhoenixToast.show(value, context);
                }),
                RichGridInfo.valueLastClickInfo(context, '名称', '内容内容',
                    valueQuestionCallback: (value) {
                      PhoenixToast.show(value, context);
                    },
                    clickTitle: "可点击内容",
                    clickCallback: (value) {
                      PhoenixToast.show(value, context);
                    }),
                RichGridInfo.valueLastClickInfo(context, '名称', '内容内容',
                    clickTitle: "可点击内容", clickCallback: (value) {
                  PhoenixToast.show(value, context);
                }),
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
                RichGridInfo.valueLastClickInfo(
                    context, '名称名称名称名称名称名称名称', '内容内容',
                    keyQuestionCallback: (value) {
                  PhoenixToast.show(value, context);
                }),
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
                RichGridInfo.valueLastClickInfo(
                    context, '名称名称', '内容内容内容内容内容内容内容内容内容内容内容',
                    keyQuestionCallback: (value) {
                  PhoenixToast.show(value, context);
                }),
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
              pairInfoList: <RichGridInfo>[
                RichGridInfo("名称名称：", '内容内容内容内容'),
                RichGridInfo.valueLastClickInfo(
                    context, "名称名称名称名称名称名称名称名称名称：", '内容内容内容内容内容内容内容内容内容内容内容'),
                RichGridInfo("名称：", '内容内容'),
                RichGridInfo("名称：", '内容'),
              ],
            ),
            const Text(
              '异常案例：可点击内容过长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            RichInfoGrid(
              pairInfoList: <RichGridInfo>[
                RichGridInfo("名称名称：", '内容内容内容内容'),
                RichGridInfo.valueLastClickInfo(context, "名称名称名", '内容内容内容',
                    clickTitle: '可点击内容可点击内容可点击内容',
                    valueQuestionCallback: (value) {
                  PhoenixToast.show(value, context);
                }),
                RichGridInfo("名称：", '内容内容'),
                RichGridInfo("名称：", '内容'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

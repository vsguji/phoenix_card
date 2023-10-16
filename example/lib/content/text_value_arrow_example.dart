import 'package:flutter/material.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_toast/phoenix_toast.dart';

class TextValueArrowContentExample extends StatefulWidget {
  @override
  _TextValueArrowContentExampleState createState() =>
      _TextValueArrowContentExampleState();
}

class _TextValueArrowContentExampleState
    extends State<TextValueArrowContentExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PhoenixAppBar(
        title: 'value带有操作箭头',
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
              text: 'value带有操作箭头，箭头在最右侧，value单行展示',
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            PairInfoTable(
              isValueAlign: false,
              children: <InfoModal>[
                InfoModal(
                    keyPart: "名称：",
                    valuePart: "内容内容内容内容",
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal(
                    keyPart: "名称名：",
                    valuePart: "内容内容内容内容内容",
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal.keyOrValueLastQuestionInfo(
                    context, "名称名称名称", "内容内容内容内容内容",
                    keyShow: true,
                    valueShow: true,
                    keyCallback: () {
                      PhoenixToast.show('key question', context);
                    },
                    valueCallback: () {
                      PhoenixToast.show('value question', context);
                    },
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal.valueLastClickInfo(
                    context, "名称名称名称", "内容内容内容内容内容", "超链接",
                    clickCallback: (value) {
                      PhoenixToast.show(value!, context);
                    },
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
              ],
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            PairInfoTable(
              isValueAlign: true,
              children: <InfoModal>[
                InfoModal(
                    keyPart: "名称：",
                    valuePart: "内容内容内容内容",
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal(
                    keyPart: "名称名：",
                    valuePart: "内容内容内容内容内容",
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal.keyOrValueLastQuestionInfo(
                    context, "名称名称名称", "内容内容内容内容内容",
                    keyShow: true,
                    valueShow: true,
                    keyCallback: () {
                      PhoenixToast.show('key question', context);
                    },
                    valueCallback: () {
                      PhoenixToast.show('value question', context);
                    },
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal.valueLastClickInfo(
                    context, "名称名称名称", "内容内容内容内容内容", "超链接",
                    clickCallback: (value) {
                      PhoenixToast.show(value!, context);
                    },
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    })
              ],
            ),
            const Text(
              '异常案例正常案例 key过长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            PairInfoTable(
              isValueAlign: false,
              children: <InfoModal>[
                InfoModal(
                    keyPart: "名称：",
                    valuePart: "内容内容内容内容",
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal(
                    keyPart: "名称名：",
                    valuePart: "内容内容内容内容内容",
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal.keyOrValueLastQuestionInfo(
                    context, "名称名称名称名称名称名名称名称名称名称", "内容内容内容内容内容",
                    keyShow: true,
                    valueShow: true,
                    keyCallback: () {
                      PhoenixToast.show('key question', context);
                    },
                    valueCallback: () {
                      PhoenixToast.show('value question', context);
                    },
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
              ],
            ),
            const Text(
              '异常案例正常案例 key过长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            PairInfoTable(
              isValueAlign: true,
              children: <InfoModal>[
                InfoModal(
                    keyPart: "名称：",
                    valuePart: "内容内容内容内容",
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal(
                    keyPart: "名称名：",
                    valuePart: "内容内容内容内容内容",
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal.keyOrValueLastQuestionInfo(
                    context, "名称名称名称名称名称名名称名称名称名称", "内容内容内容内容内容",
                    keyShow: true,
                    valueShow: true,
                    keyCallback: () {
                      PhoenixToast.show('key question', context);
                    },
                    valueCallback: () {
                      PhoenixToast.show('value question', context);
                    },
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
              ],
            ),
            const Text(
              '异常案例正常案例 内容过长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            PairInfoTable(
              isValueAlign: true,
              children: <InfoModal>[
                InfoModal(
                    keyPart: "名称：",
                    valuePart: "内容内容内容内容",
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal(
                    keyPart: "名称名：",
                    valuePart: "内容内容内容内容内容",
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal.keyOrValueLastQuestionInfo(
                    context, "名称名称名", "内容内容内容内容内容内容内容内容内容内容",
                    keyShow: true,
                    valueShow: true,
                    keyCallback: () {
                      PhoenixToast.show('key question', context);
                    },
                    valueCallback: () {
                      PhoenixToast.show('value question', context);
                    },
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
              ],
            ),
            const Text(
              '异常案例正常案例 内容过长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            PairInfoTable(
              isValueAlign: false,
              children: <InfoModal>[
                InfoModal(
                    keyPart: "名称：",
                    valuePart: "内容内容内容内容",
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal(
                    keyPart: "名称名：",
                    valuePart: "内容内容内容内容内容",
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
                InfoModal.keyOrValueLastQuestionInfo(
                    context, "名称名称名", "内容内容内容内容内容内容内容内容内容内容",
                    keyShow: true,
                    valueShow: true,
                    keyCallback: () {
                      PhoenixToast.show('key question', context);
                    },
                    valueCallback: () {
                      PhoenixToast.show('value question', context);
                    },
                    isArrow: true,
                    valueClickCallback: () {
                      PhoenixToast.show('内容内容内容内容', context);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

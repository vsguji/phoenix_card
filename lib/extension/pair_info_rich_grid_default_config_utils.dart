import 'package:flutter/material.dart';
import 'package:phoenix_base/phoenix.dart';

import '../config/pair_info_rich_grid_config.dart';

/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-24 21:12:54
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-24 21:25:27
 * @FilePath: /phoenix_card/lib/extension/pair_info_rich_grid_default_config_utils.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
/// 内容信息（一列）配置
extension BasePairRichInfoGridConfigUtils on BaseDefaultConfigUtils {
  /// 内容信息（一列）配置
  static PairRichInfoGridConfig defaultPairRichInfoGridConfig =
      PairRichInfoGridConfig(
    rowSpacing: 4.0,
    itemSpacing: 2.0,
    itemHeight: 20.0,
    keyTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextSecondary,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
      textBaseline: TextBaseline.ideographic,
    ),
    valueTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextBase,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
      textBaseline: TextBaseline.ideographic,
    ),
    linkTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.brandPrimary,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
      textBaseline: TextBaseline.ideographic,
    ),
    configId: PHOENIX_CONFIG_ID,
  );
}

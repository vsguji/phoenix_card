/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-24 21:01:27
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-24 21:42:37
 * @FilePath: /phoenix_card/lib/extension/enhance_number_default_config_utils.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_base/phoenix.dart';

import '../config/enhance_number_card_config.dart';

/// 数字增强信息配置
extension BaseEnhanceNumberConfigUtils on BaseDefaultConfigUtils {
  ///
  static EnhanceNumberCardConfig defaultEnhanceNumberInfoConfig =
      EnhanceNumberCardConfig(
    runningSpace: 16.0,
    itemRunningSpace: 8.0,
    titleTextStyle: BaseTextStyle(fontSize: 28.0, fontWeight: FontWeight.w500),
    descTextStyle: BaseTextStyle(
      fontSize: 12.0,
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextSecondary,
    ),
    dividerWidth: 0.5,
  );
}

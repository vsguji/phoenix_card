/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-24 21:20:13
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-24 21:28:53
 * @FilePath: /phoenix_card/lib/extension/pair_info_table_default_config_utils.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:phoenix_base/phoenix.dart';

import '../config/pair_info_table_config.dart';

/// 内容信息（两列）配置
extension BasePairRichInfoTableConfigUtils on BaseDefaultConfigUtils {
  ///
  static PairInfoTableConfig defaultPairInfoTableConfig = PairInfoTableConfig(
    rowSpacing: 4,
    itemSpacing: 2,
    keyTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextSecondary,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
    ),
    valueTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextBase,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
    ),
    linkTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.brandPrimary,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
    ),
    configId: PHOENIX_CONFIG_ID,
  );
}

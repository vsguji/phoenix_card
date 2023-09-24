/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-24 21:20:21
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-24 21:42:26
 * @FilePath: /phoenix_card/lib/extension/pair_info_table_total_config.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:phoenix_base/phoenix.dart';

import '../config/pair_info_table_config.dart';
import 'pair_info_table_default_config_utils.dart';

class PairRichInfoTableTotalConfig extends BaseTotalConfig {
  PairRichInfoTableTotalConfig({PairInfoTableConfig? pairInfoTableConfig})
      : _pairInfoTableConfig = pairInfoTableConfig;

  PairInfoTableConfig? _pairInfoTableConfig;

  PairInfoTableConfig get pairInfoTableConfig =>
      _pairInfoTableConfig ??
      BasePairRichInfoTableConfigUtils.defaultPairInfoTableConfig;

  @override
  void initThemeConfig(String configId) {
    super.initThemeConfig(configId);
    _pairInfoTableConfig ??= PairInfoTableConfig();
    pairInfoTableConfig.initThemeConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
  }
}

extension BasePairRichInfoTableTotalConfig on BaseTotalConfig {
  static PairInfoTableConfig? _actionSheetConfig;
  PairInfoTableConfig get pairInfoTableConfig =>
      _actionSheetConfig ??
      BasePairRichInfoTableConfigUtils.defaultPairInfoTableConfig;
  set pairInfoTotalConfig(PairRichInfoTableTotalConfig config) {
    _actionSheetConfig = config.pairInfoTableConfig;
  }
}

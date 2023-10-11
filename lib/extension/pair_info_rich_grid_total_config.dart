import 'package:phoenix_base/phoenix.dart';

import '../config/pair_info_rich_grid_config.dart';
import 'pair_info_rich_grid_default_config_utils.dart';

/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-24 21:13:08
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-11 09:47:30
 * @FilePath: /phoenix_card/lib/extension/pair_info_rich_grid_total_config.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
class PairRichInfoGridTotalConfig extends BaseTotalConfig {
  PairRichInfoGridTotalConfig({PairRichInfoGridConfig? pairInfoGridConfig})
      : _pairInfoGridConfig = pairInfoGridConfig;

  PairRichInfoGridConfig? _pairInfoGridConfig;

  PairRichInfoGridConfig get pairInfoGridConfig =>
      _pairInfoGridConfig ??
      BasePairRichInfoGridConfigUtils.defaultPairRichInfoGridConfig;

  @override
  void initThemeConfig(String configId) {
    super.initThemeConfig(configId);
    _pairInfoGridConfig ??= PairRichInfoGridConfig();
    pairInfoGridConfig.initThemeConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
  }
}

extension BasePairRichInfoGridTotalConfig on BaseTotalConfig {
  static PairRichInfoGridConfig? _pairRichInfoGridConfig;
  PairRichInfoGridConfig get pairRichInfoGridConfig =>
      _pairRichInfoGridConfig ??
      BasePairRichInfoGridConfigUtils.defaultPairRichInfoGridConfig;
  set pairInfoTotalConfig(PairRichInfoGridTotalConfig config) {
    _pairRichInfoGridConfig = config.pairInfoGridConfig;
  }
}

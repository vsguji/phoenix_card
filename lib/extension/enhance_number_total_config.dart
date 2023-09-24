/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-24 21:02:00
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-24 21:06:20
 * @FilePath: /phoenix_card/lib/extension/enhance_number_total_config.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:phoenix_base/phoenix.dart';

import '../config/enhance_number_card_config.dart';
import 'enhance_number_default_config_utils.dart';

class EnhanceNumberTotalConfig extends BaseTotalConfig {
  EnhanceNumberTotalConfig({EnhanceNumberCardConfig? enhanceNumberConfig})
      : _enhanceNumberConfig = enhanceNumberConfig;

  EnhanceNumberCardConfig? _enhanceNumberConfig;

  EnhanceNumberCardConfig get enhanceNumberCardConfig =>
      _enhanceNumberConfig ??
      BaseEnhanceNumberConfigUtils.defaultEnhanceNumberInfoConfig;

  @override
  void initThemeConfig(String configId) {
    super.initThemeConfig(configId);
    _enhanceNumberConfig ??= EnhanceNumberCardConfig();
    enhanceNumberCardConfig.initThemeConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
  }
}

extension BaseEnhanceNumberTotalConfig on BaseTotalConfig {
  static EnhanceNumberCardConfig? _actionSheetConfig;
  EnhanceNumberCardConfig get enhanceNumberCardConfig =>
      _actionSheetConfig ??
      BaseEnhanceNumberConfigUtils.defaultEnhanceNumberInfoConfig;
  set actionSheetTotalConfig(EnhanceNumberTotalConfig config) {
    _actionSheetConfig = config.enhanceNumberCardConfig;
  }
}

import 'package:phoenix_base/phoenix.dart';
import 'package:phoenix_card/extension/enhance_number_total_config.dart';

import '../extension/enhance_number_default_config_utils.dart';

/// 强化数字展示组件配置
class EnhanceNumberCardConfig extends BaseConfig {
  /// 遵循外部主题配置
  /// 默认为 [BaseEnhanceNumberConfigUtils.defaultEnhanceNumberInfoConfig]
  EnhanceNumberCardConfig({
    double? runningSpace,
    double? itemRunningSpace,
    BaseTextStyle? titleTextStyle,
    BaseTextStyle? descTextStyle,
    double? dividerWidth,
    String configId = GLOBAL_CONFIG_ID,
  })  : _runningSpace = runningSpace,
        _itemRunningSpace = itemRunningSpace,
        _titleTextStyle = titleTextStyle,
        _descTextStyle = descTextStyle,
        _dividerWidth = dividerWidth,
        super(configId: configId);

  /// 如果超过一行，行间距
  double? _runningSpace;

  double get runningSpace =>
      _runningSpace ??
      BaseEnhanceNumberConfigUtils.defaultEnhanceNumberInfoConfig.runningSpace;

  /// Item的上半部分和下半部分的间距
  double? _itemRunningSpace;

  double get itemRunningSpace =>
      _itemRunningSpace ??
      BaseEnhanceNumberConfigUtils
          .defaultEnhanceNumberInfoConfig.itemRunningSpace;

  double? _dividerWidth;

  double get dividerWidth =>
      _dividerWidth ??
      BaseEnhanceNumberConfigUtils.defaultEnhanceNumberInfoConfig.dividerWidth;
  BaseTextStyle? _titleTextStyle;

  BaseTextStyle get titleTextStyle =>
      _titleTextStyle ??
      BaseEnhanceNumberConfigUtils
          .defaultEnhanceNumberInfoConfig.titleTextStyle;
  BaseTextStyle? _descTextStyle;

  BaseTextStyle get descTextStyle =>
      _descTextStyle ??
      BaseEnhanceNumberConfigUtils.defaultEnhanceNumberInfoConfig.descTextStyle;

  @override
  void initThemeConfig(
    String configId, {
    BaseCommonConfig? currentLevelCommonConfig,
  }) {
    super.initThemeConfig(
      configId,
      currentLevelCommonConfig: currentLevelCommonConfig,
    );

    EnhanceNumberCardConfig userConfig = BaseThemeConfig.instance
        .getConfig(configId: configId)
        .enhanceNumberCardConfig;

    _runningSpace ??= userConfig._runningSpace;
    _itemRunningSpace ??= userConfig._itemRunningSpace;
    _dividerWidth ??= userConfig._dividerWidth;
    _titleTextStyle = userConfig.titleTextStyle.merge(
      BaseTextStyle(color: commonConfig.colorTextBase).merge(_titleTextStyle),
    );
    _descTextStyle = userConfig.descTextStyle.merge(
      BaseTextStyle(color: commonConfig.colorTextSecondary)
          .merge(_descTextStyle),
    );
  }

  EnhanceNumberCardConfig copyWith({
    double? runningSpace,
    double? itemRunningSpace,
    double? dividerWidth,
    BaseTextStyle? titleTextStyle,
    BaseTextStyle? descTextStyle,
  }) {
    return EnhanceNumberCardConfig(
      runningSpace: runningSpace ?? _runningSpace,
      itemRunningSpace: itemRunningSpace ?? _itemRunningSpace,
      dividerWidth: dividerWidth ?? _dividerWidth,
      titleTextStyle: titleTextStyle ?? _titleTextStyle,
      descTextStyle: descTextStyle ?? _descTextStyle,
    );
  }

  EnhanceNumberCardConfig merge(EnhanceNumberCardConfig? other) {
    if (other == null) return this;
    return copyWith(
      runningSpace: other._runningSpace,
      itemRunningSpace: other._itemRunningSpace,
      dividerWidth: other._dividerWidth,
      titleTextStyle: titleTextStyle.merge(other._titleTextStyle),
      descTextStyle: descTextStyle.merge(other._descTextStyle),
    );
  }
}

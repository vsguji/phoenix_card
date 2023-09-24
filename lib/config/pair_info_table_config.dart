import 'package:phoenix_base/phoenix.dart';
import 'package:phoenix_card/extension/pair_info_table_total_config.dart';

import '../extension/pair_info_table_default_config_utils.dart';

/// BrnPairInfoTable 的配置文件 全局配置
class PairInfoTableConfig extends BaseConfig {
  /// 遵循外部主题配置
  /// 默认为 [BasePairRichInfoTableConfigUtils.defaultPairInfoTableConfig]
  PairInfoTableConfig({
    double? rowSpacing,
    double? itemSpacing,
    BaseTextStyle? keyTextStyle,
    BaseTextStyle? valueTextStyle,
    BaseTextStyle? linkTextStyle,
    String configId = GLOBAL_CONFIG_ID,
  })  : _rowSpacing = rowSpacing,
        _itemSpacing = itemSpacing,
        _keyTextStyle = keyTextStyle,
        _valueTextStyle = valueTextStyle,
        _linkTextStyle = linkTextStyle,
        super(configId: configId);

  /// 行间距 纵向
  double? _rowSpacing;

  /// BrnInfoModal 属性配置 行间距
  double? _itemSpacing;

  /// BrnInfoModal key文字样式
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.colorTextSecondary],
  ///   fontSize: [BrnCommonConfig.fontSizeBase],
  ///   fontWeight: FontWeight.w400,
  /// )
  BaseTextStyle? _keyTextStyle;

  /// BrnInfoModal value文字样式
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.colorTextBase],
  ///   fontSize: [BrnCommonConfig.fontSizeBase],
  ///   fontWeight: FontWeight.w400,
  /// )
  BaseTextStyle? _valueTextStyle;

  /// BrnInfoModal 链接文字样式
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.brandPrimary],
  ///   fontWeight: FontWeight.w400,
  ///   fontSize: [BrnCommonConfig.fontSizeBase]
  /// )
  BaseTextStyle? _linkTextStyle;

  double get rowSpacing =>
      _rowSpacing ??
      BasePairRichInfoTableConfigUtils.defaultPairInfoTableConfig.rowSpacing;

  double get itemSpacing =>
      _itemSpacing ??
      BasePairRichInfoTableConfigUtils.defaultPairInfoTableConfig.itemSpacing;

  BaseTextStyle get keyTextStyle =>
      _keyTextStyle ??
      BasePairRichInfoTableConfigUtils.defaultPairInfoTableConfig.keyTextStyle;

  BaseTextStyle get valueTextStyle =>
      _valueTextStyle ??
      BasePairRichInfoTableConfigUtils
          .defaultPairInfoTableConfig.valueTextStyle;

  BaseTextStyle get linkTextStyle =>
      _linkTextStyle ??
      BasePairRichInfoTableConfigUtils.defaultPairInfoTableConfig.linkTextStyle;

  @override
  void initThemeConfig(
    String configId, {
    BaseCommonConfig? currentLevelCommonConfig,
  }) {
    super.initThemeConfig(
      configId,
      currentLevelCommonConfig: currentLevelCommonConfig,
    );

    /// 用户全局组件配置
    PairInfoTableConfig pairInfoTableConfig = BaseThemeConfig.instance
        .getConfig(configId: configId)
        .pairInfoTableConfig;

    _rowSpacing ??= pairInfoTableConfig._rowSpacing;
    _keyTextStyle = pairInfoTableConfig.keyTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.colorTextSecondary,
        fontSize: commonConfig.fontSizeBase,
      ).merge(_keyTextStyle),
    );
    _valueTextStyle = pairInfoTableConfig.valueTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.colorTextBase,
        fontSize: commonConfig.fontSizeBase,
      ).merge(_valueTextStyle),
    );
    _linkTextStyle = pairInfoTableConfig.linkTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.brandPrimary,
        fontSize: commonConfig.fontSizeBase,
      ).merge(_linkTextStyle),
    );
    _itemSpacing ??= pairInfoTableConfig._itemSpacing;
  }

  PairInfoTableConfig copyWith({
    double? rowSpacing,
    double? itemSpacing,
    BaseTextStyle? keyTextStyle,
    BaseTextStyle? valueTextStyle,
    BaseTextStyle? linkTextStyle,
  }) {
    return PairInfoTableConfig(
      rowSpacing: rowSpacing ?? _rowSpacing,
      itemSpacing: itemSpacing ?? _itemSpacing,
      keyTextStyle: keyTextStyle ?? _keyTextStyle,
      valueTextStyle: valueTextStyle ?? _valueTextStyle,
      linkTextStyle: linkTextStyle ?? _linkTextStyle,
    );
  }

  PairInfoTableConfig merge(PairInfoTableConfig? other) {
    if (other == null) return this;
    return copyWith(
      rowSpacing: other._rowSpacing,
      itemSpacing: other._itemSpacing,
      keyTextStyle: keyTextStyle.merge(other._keyTextStyle),
      valueTextStyle: valueTextStyle.merge(other._valueTextStyle),
      linkTextStyle: linkTextStyle.merge(other._linkTextStyle),
    );
  }
}

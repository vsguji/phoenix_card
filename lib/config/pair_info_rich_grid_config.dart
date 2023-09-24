import 'package:phoenix_base/phoenix.dart';
import 'package:phoenix_card/extension/pair_info_rich_grid_total_config.dart';

import '../extension/pair_info_rich_grid_default_config_utils.dart';

class PairRichInfoGridConfig extends BaseConfig {
  /// 遵循外部主题配置
  /// 默认为 [BasePairRichInfoGridConfigUtils.defaultPairRichInfoGridConfig]
  PairRichInfoGridConfig({
    double? rowSpacing,
    double? itemSpacing,
    double? itemHeight,
    BaseTextStyle? keyTextStyle,
    BaseTextStyle? valueTextStyle,
    BaseTextStyle? linkTextStyle,
    String configId = GLOBAL_CONFIG_ID,
  })  : _rowSpacing = rowSpacing,
        _itemSpacing = itemSpacing,
        _itemHeight = itemHeight,
        _keyTextStyle = keyTextStyle,
        _valueTextStyle = valueTextStyle,
        _linkTextStyle = linkTextStyle,
        super(configId: configId);

  /// 行间距 纵向
  double? _rowSpacing;

  /// 元素间距 横向
  double? _itemSpacing;

  /// 元素高度
  double? _itemHeight;

  /// key文字样式
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.colorTextSecondary],
  ///   fontSize: [BrnCommonConfig.fontSizeBase],
  ///   fontWeight: FontWeight.w400,
  /// )
  BaseTextStyle? _keyTextStyle;

  /// value文字样式
  ///
  /// BaseTextStyle(
  ///   fontWeight: FontWeight.w400,
  ///   color: [BrnCommonConfig.colorTextBase],
  ///   fontSize: [BrnCommonConfig.fontSizeBase],
  /// )
  BaseTextStyle? _valueTextStyle;

  /// 链接文字样式
  ///
  /// BaseTextStyle(
  ///   fontWeight: FontWeight.w400,
  ///   color: [BrnCommonConfig.brandPrimary],
  ///   fontSize: [BrnCommonConfig.fontSizeBase],
  /// )
  BaseTextStyle? _linkTextStyle;

  double get rowSpacing =>
      _rowSpacing ??
      BasePairRichInfoGridConfigUtils.defaultPairRichInfoGridConfig.rowSpacing;

  double get itemSpacing =>
      _itemSpacing ??
      BasePairRichInfoGridConfigUtils.defaultPairRichInfoGridConfig.itemSpacing;

  double get itemHeight =>
      _itemHeight ??
      BasePairRichInfoGridConfigUtils.defaultPairRichInfoGridConfig.itemHeight;

  BaseTextStyle get keyTextStyle =>
      _keyTextStyle ??
      BasePairRichInfoGridConfigUtils
          .defaultPairRichInfoGridConfig.keyTextStyle;

  BaseTextStyle get valueTextStyle =>
      _valueTextStyle ??
      BasePairRichInfoGridConfigUtils
          .defaultPairRichInfoGridConfig.valueTextStyle;

  BaseTextStyle get linkTextStyle =>
      _linkTextStyle ??
      BasePairRichInfoGridConfigUtils
          .defaultPairRichInfoGridConfig.linkTextStyle;

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
    PairRichInfoGridConfig pairRichInfoGridConfig = BaseThemeConfig.instance
        .getConfig(configId: configId)
        .pairRichInfoGridConfig;

    _rowSpacing ??= pairRichInfoGridConfig._rowSpacing;
    _itemSpacing ??= pairRichInfoGridConfig._itemSpacing;
    _itemHeight ??= pairRichInfoGridConfig._itemHeight;
    _keyTextStyle = pairRichInfoGridConfig.keyTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.colorTextSecondary,
        fontSize: commonConfig.fontSizeBase,
      ).merge(_keyTextStyle),
    );
    _valueTextStyle = pairRichInfoGridConfig.valueTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.colorTextBase,
        fontSize: commonConfig.fontSizeBase,
      ).merge(_valueTextStyle),
    );
    _linkTextStyle = pairRichInfoGridConfig.linkTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.brandPrimary,
        fontSize: commonConfig.fontSizeBase,
      ).merge(_linkTextStyle),
    );
  }

  PairRichInfoGridConfig copyWith({
    double? rowSpacing,
    double? itemSpacing,
    double? itemHeight,
    BaseTextStyle? keyTextStyle,
    BaseTextStyle? valueTextStyle,
    BaseTextStyle? linkTextStyle,
    BaseTextStyle? titleTextsStyle,
  }) {
    return PairRichInfoGridConfig(
      rowSpacing: rowSpacing ?? _rowSpacing,
      itemSpacing: itemSpacing ?? _itemSpacing,
      itemHeight: itemHeight ?? _itemHeight,
      keyTextStyle: keyTextStyle ?? _keyTextStyle,
      valueTextStyle: valueTextStyle ?? _valueTextStyle,
      linkTextStyle: linkTextStyle ?? _linkTextStyle,
    );
  }

  PairRichInfoGridConfig merge(PairRichInfoGridConfig? other) {
    if (other == null) return this;
    return copyWith(
      rowSpacing: other._rowSpacing,
      itemSpacing: other._itemSpacing,
      itemHeight: other._itemHeight,
      keyTextStyle: keyTextStyle.merge(other._keyTextStyle),
      valueTextStyle: valueTextStyle.merge(other._valueTextStyle),
      linkTextStyle: linkTextStyle.merge(other._linkTextStyle),
    );
  }
}

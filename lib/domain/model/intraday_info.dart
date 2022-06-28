import 'package:freezed_annotation/freezed_annotation.dart';

part 'intraday_info.freezed.dart';

part 'intraday_info.g.dart';

@freezed
class IntradayInfo with _$IntradayInfo {
  const factory IntradayInfo({
    required DateTime date,
    required double close,
  }) = _IntradayInfo;

  factory IntradayInfo.fromJson(Map<String, Object?> json) => _$IntradayInfoFromJson(json);
}
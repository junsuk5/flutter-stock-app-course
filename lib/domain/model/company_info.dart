import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_info.freezed.dart';

part 'company_info.g.dart';

@freezed
class CompanyInfo with _$CompanyInfo {
  const factory CompanyInfo({
    required String symbol,
    required String description,
    required String name,
    required String country,
    required String industry,
  }) = _CompanyInfo;

  factory CompanyInfo.fromJson(Map<String, Object?> json) => _$CompanyInfoFromJson(json);
}
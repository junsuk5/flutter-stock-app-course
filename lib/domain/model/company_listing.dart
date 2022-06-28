import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_listing.freezed.dart';

part 'company_listing.g.dart';

@freezed
class CompanyListing with _$CompanyListing {
  const factory CompanyListing({
    required String symbol,
    required String name,
    required String exchange,
  }) = _CompanyListing;

  factory CompanyListing.fromJson(Map<String, Object?> json) => _$CompanyListingFromJson(json);
}
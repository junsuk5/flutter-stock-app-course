import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_listings_action.freezed.dart';

@freezed
class CompanyListingsAction with _$CompanyListingsAction {
  const factory CompanyListingsAction.refresh() = Refresh;
  const factory CompanyListingsAction.onSearchQueryChange(String query) = OnSearchQueryChange;
}


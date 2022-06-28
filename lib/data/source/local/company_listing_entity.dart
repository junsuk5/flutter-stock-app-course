import 'package:hive/hive.dart';

part 'company_listing_entity.g.dart';

@HiveType(typeId: 0)
class CompanyListingEntity extends HiveObject {
  @HiveField(0)
  String symbol;

  @HiveField(1)
  String name;

  @HiveField(2)
  String exchange;

  CompanyListingEntity({
    required this.symbol,
    required this.name,
    required this.exchange,
  });
}

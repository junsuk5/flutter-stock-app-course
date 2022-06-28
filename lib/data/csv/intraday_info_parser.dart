import 'package:csv/csv.dart';
import 'package:stock_app/data/csv/csv_parser.dart';
import 'package:stock_app/data/mapper/intraday_info_mapper.dart';
import 'package:stock_app/data/source/remote/dto/intraday_info_dto.dart';
import 'package:stock_app/domain/model/intraday_info.dart';

class IntradayInfoParser implements CsvParser<IntradayInfo> {
  @override
  Future<List<IntradayInfo>> parse(String csvString) async {
    List<List<dynamic>> csvValues =
        const CsvToListConverter().convert(csvString);

    csvValues.removeAt(0);

    return csvValues.map((e) {
      final timestamp = e[0] ?? '';
      final close = e[4] ?? 0.0;
      final dto = IntradayInfoDto(timestamp: timestamp, close: close);
      return dto.toIntradayInfo();
    }).toList();
  }
}

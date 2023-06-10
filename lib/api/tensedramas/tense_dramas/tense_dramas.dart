import 'package:json_annotation/json_annotation.dart';

import 'dates.dart';
import 'result.dart';

part 'tense_dramas.g.dart';

@JsonSerializable()
class TenseDramas {
  Dates? dates;
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  TenseDramas({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory TenseDramas.fromJson(Map<String, dynamic> json) {
    return _$TenseDramasFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TenseDramasToJson(this);
}

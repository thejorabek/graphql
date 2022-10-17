import 'package:json_annotation/json_annotation.dart';

part 'country_languages.g.dart';

@JsonSerializable(createToJson: false)
class CountryLanguages {
  CountryLanguages({this.code, this.name});

  factory CountryLanguages.fromJson(Map<String, dynamic> json) => _$CountryLanguagesFromJson(json);

  @JsonKey(defaultValue: '', name: 'code')
  String? code;
  @JsonKey(defaultValue: '', name: 'name')
  String? name;
}

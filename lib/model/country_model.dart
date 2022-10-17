import 'package:json_annotation/json_annotation.dart';

part 'country_model.g.dart';

@JsonSerializable(createToJson: false)
class Country {
  const Country({this.code, this.name, this.emoji});

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  @JsonKey(defaultValue: '',name: 'code')
  final String? code;
  @JsonKey(defaultValue: '',name: 'name')
  final String? name;
  @JsonKey(defaultValue: '',name: 'emoji')
  final String? emoji;
}
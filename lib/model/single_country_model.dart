import 'package:graphql_lesson/model/country_languages.dart';
import 'package:json_annotation/json_annotation.dart';

part 'single_country_model.g.dart';

@JsonSerializable(createToJson: false)
class SingleCountry {
  SingleCountry({this.capital, this.currency, this.emoji, this.languages, this.name, this.native});

  factory SingleCountry.fromJson(Map<String, dynamic> json) => _$SingleCountryFromJson(json);

  @JsonKey(defaultValue: '', name: 'name')
  String? name;
  @JsonKey(defaultValue: '', name: 'native')
  String? native;
  @JsonKey(defaultValue: '', name: 'capital')
  String? capital;
  @JsonKey(defaultValue: '', name: 'emoji')
  String? emoji;
  @JsonKey(defaultValue: '', name: 'currency')
  String? currency;
  @JsonKey(name: 'languages')
  List<CountryLanguages>? languages;
}
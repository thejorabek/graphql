// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleCountry _$SingleCountryFromJson(Map<String, dynamic> json) =>
    SingleCountry(
      capital: json['capital'] as String? ?? '',
      currency: json['currency'] as String? ?? '',
      emoji: json['emoji'] as String? ?? '',
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => CountryLanguages.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String? ?? '',
      native: json['native'] as String? ?? '',
    );

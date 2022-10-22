import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_lesson/model/country_model.dart';
import 'package:graphql_lesson/service/country_api_client.dart';

part 'country_state.dart';

class CountryCubit extends Cubit<CountryState> {
  CountryCubit(this.countryApiClient) : super(CountryInitial()) {
    getCountries();
  }

  final CountryApiClient countryApiClient;

  Future<void> getCountries() async {
    emit(CountryLoading());
    try {
      final countries = countryApiClient.getCountires();
      emit(CountrySuccess(countries: countries as List<Country>));
    } catch (e) {
      emit(CountryError(errorMessage: e.toString()));
    }
  }
}

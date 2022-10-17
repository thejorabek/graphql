part of 'country_cubit.dart';

@immutable
abstract class CountryState {}

class CountryInitial extends CountryState {
  CountryInitial();
}

class CountryLoading extends CountryState {
  CountryLoading();
}

class CountrySuccess extends CountryState {
  List<Country> countries;
  CountrySuccess({required this.countries});
}

class CountryError extends CountryState{
  String errorMessage;
  CountryError({required this.errorMessage});
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_lesson/cubit/country_cubit.dart';
import 'package:graphql_lesson/service/country_api_client.dart';
import 'package:graphql_lesson/view/country_view.dart';

void main() {
  runApp(MyApp(
    countryApiClient: CountryApiClient.create(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.countryApiClient});

  final CountryApiClient countryApiClient;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CountryCubit>(
        create: (context) => CountryCubit(countryApiClient),
        child: CountryView(),
      ),
    );
  }
}

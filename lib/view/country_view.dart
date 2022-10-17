import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_lesson/cubit/country_cubit.dart';
import 'package:graphql_lesson/service/country_api_client.dart';

class CountryView extends StatelessWidget {
  const CountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => CountryCubit(),
        child: ListView.builder(,itemBuilder: ,),
      ),
    );
  }
}

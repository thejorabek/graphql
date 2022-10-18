import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_lesson/cubit/country_cubit.dart';

class CountryView extends StatelessWidget {
  const CountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Countries'),
          centerTitle: true,
        ),
        body: BlocBuilder<CountryCubit, CountryState>(builder: (context, state) {
          print('Loading');
          if (state is CountryLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CountrySuccess) {
            return ListView.builder(
                itemCount: state.countries.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(title: Text(state.countries[index].name.toString())),
                  );
                });
          } else if (state is CountryError) {
            return Center(
              child: Text(state.errorMessage.toString()),
            );
          } else {
            return SizedBox();
          }
        }));
  }
}

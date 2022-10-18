import 'package:graphql/client.dart';
import 'package:graphql_lesson/model/country_model.dart';
import 'package:graphql_lesson/queries/get_countries_query.dart';

class GetJobsRequestFailure implements Exception {}

class CountryApiClient {
  const CountryApiClient({required GraphQLClient graphQLClient}) : _graphQLClient = graphQLClient;

  factory CountryApiClient.create() {
    final httpLink = HttpLink('https://countries.trevorblades.com');
    final link = Link.from([httpLink]);
    return CountryApiClient(
      graphQLClient: GraphQLClient(cache: GraphQLCache(), link: link),
    );
  }

  final GraphQLClient _graphQLClient;

  Future<List> getCountires() async {
    final result = await _graphQLClient.query(
      QueryOptions(document: gql(getCountries)),
    );
    if (result.hasException) throw GetJobsRequestFailure();
    final data = result.data?['jobs'] as List;
    return data.map((dynamic e) => Country.fromJson(e as Map<String, dynamic>)).toList();
  }
}

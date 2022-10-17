const getSingleCountry = '''
query Query {
  country(code: "RU") {
    name
    native
    capital
    emoji
    currency
    languages {
      code
      name
    }
  }
}
''';

import 'package:grouping_ui_demo/models/country.dart';

class CountryGroup {
  final String title;
  final List<Country> countries;

  const CountryGroup({
    required this.title,
    this.countries = const [],
  });

  CountryGroup appendCountry(Country country) {
    return CountryGroup(
      title: title,
      countries: [...countries, country],
    );
  }

  @override
  String toString() {
    return "CountryGroup(title: $title, countries: $countries)";
  }
}

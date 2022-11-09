import 'package:flutter/material.dart';
import 'package:grouping_ui_demo/country_tile.dart';
import 'package:grouping_ui_demo/models/country_group.dart';

class CountryGroupWidget extends StatelessWidget {
  final CountryGroup countryGroup;

  const CountryGroupWidget({
    Key? key,
    required this.countryGroup,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(countryGroup.title),
          const SizedBox(height: 4),
          for (var country in countryGroup.countries) ...{
            CountryTile(country: country),
          },
        ],
      ),
    );
  }
}

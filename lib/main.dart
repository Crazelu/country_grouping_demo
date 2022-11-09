import 'package:flutter/material.dart';
import 'package:grouping_ui_demo/country_group_widget.dart';
import 'package:grouping_ui_demo/models/country.dart';
import 'package:grouping_ui_demo/models/country_group.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Grouping Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Country Grouping Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<CountryGroup> _countryGroups = [];

  void _groupCountries() {
    for (var country in Country.dummyCountries) {
      final groups =
          _countryGroups.where((group) => group.title == country.name[0]);

      if (groups.isEmpty) {
        //means no group exists for this country
        //so we create one

        final countryGroup = CountryGroup(
          title: country.name[0],
          countries: [country],
        );

        _countryGroups.add(countryGroup);
      } else {
        //means there's an existing group
        //so we grab the existing group and append the country to it

        final index = _countryGroups.indexOf(groups.first);

        //this is the group to modify (append a country to)
        final groupToModify = _countryGroups[index];

        _countryGroups[index] = groupToModify.appendCountry(country);
      }
    }

    //sort the groups to get them in alphabetical order
    _countryGroups.sort((a, b) => a.title.compareTo(b.title));

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(_groupCountries);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: _countryGroups.length,
        itemBuilder: (_, index) {
          final countryGroup = _countryGroups[index];
          return CountryGroupWidget(countryGroup: countryGroup);
        },
      ),
    );
  }
}

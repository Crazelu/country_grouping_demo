class Country {
  final String name;
  final String capital;
  final String flag;

  const Country({
    required this.name,
    required this.capital,
    required this.flag,
  });

  @override
  String toString() {
    return "Country(name: $name, capital: $capital, flag: $flag)";
  }

  static const List<Country> dummyCountries = [
    Country(
      name: "Afghanistan",
      capital: "Kabul",
      flag:
          "https://cdn.britannica.com/40/5340-004-B25ED5CF/Flag-Afghanistan.jpg",
    ),
    Country(
      name: "Albania",
      capital: "Tirana",
      flag:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Flag_of_Albania.svg/476px-Flag_of_Albania.svg.png",
    ),
    Country(
      name: "Angola",
      capital: "Luanda",
      flag:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Angola.svg/510px-Flag_of_Angola.svg.png",
    ),
    Country(
      name: "Nigeria",
      capital: "Abuja",
      flag:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flag_of_Nigeria.svg/510px-Flag_of_Nigeria.svg.png",
    ),
    Country(
      name: "Nicaragua",
      capital: "Managua",
      flag:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Nicaragua.svg/510px-Flag_of_Nicaragua.svg.png",
    ),
    Country(
      name: "Guinea",
      capital: "Conakry",
      flag:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Flag_of_Guinea.svg/510px-Flag_of_Guinea.svg.png",
    ),
  ];
}

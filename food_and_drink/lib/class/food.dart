class Food {
  int id;
  String name;
  String urlName;
  List<String> ingredients;
  int categoryId;
  Duration duration;

  Food(
      {required this.id,
      this.urlName = '',
      required this.name,
      this.categoryId = 1,
      this.ingredients = const ['Rau, Thịt'],
      this.duration = const Duration(minutes: 30)});
}

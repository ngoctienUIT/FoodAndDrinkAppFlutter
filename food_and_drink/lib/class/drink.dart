class Drink {
  int id;
  String name;
  String urlName;
  List<String> ingredients;
  int categoryId;
  Duration duration;

  Drink(
      {required this.id,
      this.urlName =
          'https://cdn.cet.edu.vn/wp-content/uploads/2018/04/tra-sua-tu-lam.jpg',
      required this.name,
      this.categoryId = 1,
      this.ingredients = const ['Trân Châu', 'Sữa'],
      this.duration = const Duration(minutes: 30)});
}

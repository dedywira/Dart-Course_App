class Category {
  final String name;
  final int numCourse;
  final String image;

  Category(this.name, this.numCourse, this.image);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'], item['courses'], item['image']))
    .toList();

var categoriesData = [
  {"name": "Math", "courses": 10, "image": "assets/images/math.png"},
  {"name": "Science", "courses": 17, "image": "assets/images/science.png"},
  {"name": "Music", "courses": 15, "image": "assets/images/music.png"},
  {"name": "Geography", "courses": 12, "image": "assets/images/geography.png"},
];

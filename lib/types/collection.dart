class Collection {
  final String id;
  final String name;
  final int rating;
  final String? magazine;
  final List<String> categories;
  final List<String> imageUrls;

  Collection(
    this.id,
    this.name,
    this.magazine,
    this.rating,
    this.categories,
    this.imageUrls,
  );
}

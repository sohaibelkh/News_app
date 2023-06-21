class Source {
  String? id;
  String name;

  Source({
    this.id,
    required this.name,
  });

  factory Source.fromJson(Map<String, dynamic> jsonData) {
    return Source(
        id: jsonData['id'].toString(), name: jsonData['name'].toString());
  }

  @override
  String toString() {
    return 'id = $id   name = $name';
  }
}

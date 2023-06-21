
class Source {
  String id;
  String name;
  Source({
    required this.id,
    required this.name,
  });


  factory Source.fromJson(Map<String, dynamic> jsonData){
    return Source(id: jsonData['id'], name: 'name');
  }

  @override
  String toString() {
    
    return 'id = $id   name = $name';
  }
}

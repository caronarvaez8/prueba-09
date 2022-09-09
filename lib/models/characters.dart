class Character {
  String? name;
  String? status;
  String? species;
  String? image;
  String? gender;
  String? origin;
  String? location;
  String? id;

  Character({this.id, this.name, this.status, this.species, this.image,
  this.gender, this.location, this.origin});

  factory Character.fromJson(Map<String, dynamic> map) {
    return Character(id: map['id'].toString(), status: map['status'].toString(), name: map['name'].toString(),
        species: map['species'].toString(), image: map['image'].toString(),
        gender: map['gender'].toString(), location: map["location"]['name'].toString(),
        origin: map['origin']['name'].toString());
  }
}
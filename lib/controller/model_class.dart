class Shoe {
  String name;
  int dollar;

  Shoe({required this.name, required this.dollar});

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'dollar': this.dollar,
    };
  }

  factory Shoe.fromMap(Map<String,dynamic> map) {
    return Shoe(
        name: map['name'],
        dollar: map['dollar']);
  }
}

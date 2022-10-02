class User {
    String? name;
    int? age;
    double? height;
    int? id;

    User({required this.id, required this.name, required this.age, required this.height}) {
        this.name = name;
        this.age = age;
        this.height = height;
        this.id = id;
    }

    Map toJson() {
        return {'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height};
    }

    static User fromJson(Map<dynamic, dynamic> userJson) {
    return new User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height']);
  }

  String toString() {
    return 'User(id : ${this.id} ,name: ${this.name},  age: ${this.age}, height: ${this.height})';
  }
}
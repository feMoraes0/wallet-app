
class User {
  final int id;
  final String token, name, email;

  User(this.id, this.token, this.name, this.email);

  User.fromMappedJSON(Map<String, dynamic> json)
    : id = json["user"]["id"],
      token = "Baerer " + json["token"],
      name = json["user"]["name"],
      email = json["user"]["email"]; 
}
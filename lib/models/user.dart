
//
// User
//
class User {
  late String gender;
  late Name name;
  late Location location;
  late String email;
  late Login login;
  late String dob;
  late String registered;
  late String phone;
  late String cell;
  late String id;
  late String picture;
  late String nat;


  User({required this.gender, required this.name, required this.location, required this.email, required this.login, required this.dob, required this.registered, required this.phone, required this.cell, required this.id, required this.picture, required this.nat});


  User.empty() {
    this.gender = '';
    this.name = Name.empty();
    this.location = Location.empty();
    this.email = '';
    this.login = Login.empty();
    this.dob = '';
    this.registered = '';
    this.phone = '';
    this.cell = '';
    this.id = '';
    this.picture = '';
    this.nat = '';
  }


  User.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    name = Name.fromJson(json['name']);
    location = Location.fromJson(json['location']);
    email = json['email'];
    login = Login.fromJson(json['login']);
    dob = json['dob'];
    registered = json['registered'];
    phone = json['phone'];
    cell = json['cell'];
    id = json['id'];
    picture = json['picture'];
    nat = json['nat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = this.gender;
    data['name'] = this.name.toJson();
    data['location'] = this.location.toJson();
    data['email'] = this.email;
    data['login'] = this.login.toJson();
    data['dob'] = this.dob;
    data['registered'] = this.registered;
    data['phone'] = this.phone;
    data['cell'] = this.cell;
    data['id'] = this.id;
    data['picture'] = this.picture;
    data['nat'] = this.nat;
    return data;
  }
}

//
// Name
//
class Name {
  late String title;
  late String first;
  late String last;

  Name({required this.title, required this.first, required this.last});

  Name.empty() {
    this.title = '';
    this.first = '';
    this.last = '';
  }

  Name.fromJson(Map<String, dynamic>? json) {
    this.title = '';
    this.first = '';
    this.last = '';
    if (json != null) {
      title = json['title'];
      first = json['first'];
      last = json['last'];
     }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['first'] = this.first;
    data['last'] = this.last;
    return data;
  }
}


//
// Location
//
class Location {
  late String street;
  late String city;
  late String state;
  late String postcode;
  late Coordinates coordinates;
  late Timezone timezone;

  Location({required this.street, required this.city, required this.state, required this.postcode, required this.coordinates, required this.timezone});

  Location.empty() {
    this.street = '';
    this.city = '';
    this.state = '';
    this.postcode = '';
    this.coordinates = Coordinates.empty();
    this.timezone = Timezone.empty();
  }

  Location.fromJson(Map<String, dynamic>? json) {
    this.street = '';
    this.city = '';
    this.state = '';
    this.postcode = '';
    this.coordinates = Coordinates.empty();
    this.timezone = Timezone.empty();

    if (json != null) {
      this.street = json['street'];
      this.city = json['city'];
      this.state = json['state'];
      this.postcode = json['postcode'].toString();
      this.coordinates = Coordinates.fromJson(json['coordinates']);
      this.timezone = Timezone.fromJson(json['timezone']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['city'] = this.city;
    data['state'] = this.state;
    data['postcode'] = this.postcode;
    data['coordinates'] = this.coordinates.toJson();
    data['timezone'] = this.timezone.toJson();
    return data;
  }
}

//
// Coordinate
//
class Coordinates {
  late String latitude;
  late String longitude;

  Coordinates({required this.latitude, required this.longitude});

  Coordinates.empty() {
    this.latitude = '';
    this.longitude = '';
  }

  Coordinates.fromJson(Map<String, dynamic>? json) {
    this.latitude = '';
    this.longitude = '';

    if (json != null) { 
      this.latitude = json['latitude'];
      this.longitude = json['longitude'];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}


//
// Timezone
//
class Timezone {
  late String offset;
  late String description;

  Timezone({required this.offset, required this.description});

  Timezone.empty() {
    this.offset = '';
    this.description = '';
  }

  Timezone.fromJson(Map<String, dynamic>? json) {
    this.offset = '';
    this.description = '';

    if (json != null) {
      this.offset = json['offset'];
      this.description = json['description'];
    }
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['offset'] = this.offset;
    data['description'] = this.description;
    return data;
  }
}


//
// Login
//
class Login {
  late String uuid;
  late String username;
  late String salt;
  late String sha256;

  Login(
      {required this.uuid,
      required this.username,
      required this.salt,
      required this.sha256});


  Login.empty() {
    this.uuid = '';
    this.username = '';
    this.salt = '';
    this.sha256 = '';
  }

  Login.fromJson(Map<String, dynamic>? json) {
    this.uuid = '';
    this.username = '';
    this.salt = '';
    this.sha256 = '';

    if (json != null) {
      uuid = json['uuid'];
      username = json['username'];
      salt = json['salt'];
      sha256 = json['sha256'];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['username'] = this.username;
    data['salt'] = this.salt;
    data['sha256'] = this.sha256;
    return data;
  }
}



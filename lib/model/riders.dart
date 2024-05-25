import 'package:faker/faker.dart';
class Rider {
  String id;
  String firstName;
  String lastName;
  String club;

  Rider({required this.id, required this.firstName, required this.lastName, required this.club});
  // Convert a Rider object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'club': club,
    };
  }

  factory Rider.fromMap(String id, Map<String, dynamic> map) {
    return Rider(
      id: id,
      firstName: map['firstName'],
      lastName: map['lastName'],
      club: map['club'],
    );
  }

  factory Rider.fakeRider() {
    var faker = Faker();
    return Rider(
      id: faker.guid.guid(),
      firstName: faker.person.firstName(),
      lastName: faker.person.lastName(),
      club: faker.company.name(),
    );
  }
}

import 'package:faker/faker.dart';

class Event {
  String id;
  String name;
  String location;
  DateTime date;

  Event({required this.id, required this.name, required this.location, required this.date});

  // Convert an Event object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'location': location,
      'date': date.toIso8601String(),
    };
  }

  factory Event.fromMap(String id, Map<String, dynamic> map) {
    return Event(
      id: id,
      name: map['name'],
      location: map['location'],
      date: DateTime.parse(map['date']),
    );
  }

  factory Event.fakeEvent() {
    var faker = Faker();
    return Event(
      id: faker.guid.guid(),
      name: faker.lorem.words(3).join(' '),
      location: faker.address.city(),
      date: faker.date.dateTime(minYear: 2020, maxYear: 2024),
    );
  }
}

class Rider {
  String id;
  String firstName;
  String lastName;
  String club;

  Rider({required this.id, required this.firstName, required this.lastName, required this.club});

  final fakeRider = Rider(firstName: 'John', lastName: 'Doe', club: 'Apache Riders', id: '1');
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
}

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../model/riders.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  Header({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(110);

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final rider = Rider(
      id: faker.guid.guid(),
      firstName: faker.person.firstName(),
      lastName: faker.person.lastName(),
      club: faker.company.name(),
    );

    return AppBar(
      backgroundColor: HexColor('e61d41'),
      leading: Container(
        padding: const EdgeInsets.all(8.0), // Optionally add padding
        child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRkZj4sn07hNjiiNA3boiVSXc7-zzDBmBW0bTHxeJ0ZQ&s",
          width: 120,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${rider.firstName} ${rider.lastName}${rider.club}',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            rider.club,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
      centerTitle: true, // Center the title
    );
  }
}


import 'package:flutter/material.dart';

import 'header_form.dart';

class EatForm extends StatefulWidget {
  @override
  _EatFormState createState() => _EatFormState();
}

class _EatFormState extends State<EatForm> {
  final dinerController = TextEditingController();
  final dateController = TextEditingController();
  final timeController = TextEditingController();
  final locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return HeaderForm(fields: <HeaderFormField>[
        HeaderFormField(
          assetPath: 'assets/person.png',
          title: 'Diners',
          textController: dinerController,
        ),
        HeaderFormField(
          assetPath: 'assets/calendar.png',
          title: 'Date',
          textController: dateController,
        ),
        HeaderFormField(
          assetPath: 'assets/time.png',
          title: 'Time',
          textController: timeController,
        ),
        HeaderFormField(
          assetPath: 'assets/food.png',
          title: 'Location',
          textController: locationController,
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

import 'header_form.dart';

class SleepForm extends StatefulWidget {
  @override
  _SleepFormState createState() => _SleepFormState();
}

class _SleepFormState extends State<SleepForm> {
  final travelerController = TextEditingController();
  final dateController = TextEditingController();
  final locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return HeaderForm(fields: <HeaderFormField>[
        HeaderFormField(
          assetPath: 'assets/person.png',
          title: 'Travelers',
          textController: travelerController,
        ),
        HeaderFormField(
          assetPath: 'assets/calendar.png',
          title: 'Dates',
          textController: dateController,
        ),
        HeaderFormField(
          assetPath: 'assets/hotel.png',
          title: 'Location',
          textController: locationController,
        ),
      ],
    );
  }
}
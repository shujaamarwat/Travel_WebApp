import 'package:flutter/material.dart';

import 'header_form.dart';

class FlyForm extends StatefulWidget {
  @override
  _FlyFormState createState() => _FlyFormState();
}

class _FlyFormState extends State<FlyForm> {
  final travelerController = TextEditingController();
  final countryDestinationController = TextEditingController();
  final destinationController = TextEditingController();
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return HeaderForm(fields: <HeaderFormField>[
        HeaderFormField(
          assetPath: 'assets/person.png',
          title: 'Travelers',
          textController: travelerController,
        ),
        HeaderFormField(
            assetPath: 'assets/pin.png',
            title: 'Country',
            textController: countryDestinationController,
        ),
        HeaderFormField(
            assetPath: 'assets/plane.png',
            title: 'Destination',
            textController: destinationController,
        ),
        HeaderFormField(
            assetPath: 'assets/calendar.png',
            title: 'Dates',
            textController: dateController,
        ),
      ],
    );
  }
}
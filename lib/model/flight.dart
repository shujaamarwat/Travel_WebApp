import 'package:flutter/foundation.dart';

// The following do not need to be enums, can just be strings that route
// to respective screens.
enum Category { findTrips, myTrips, savedTrips, priceAlerts, myAccount}

class Flight {
  const Flight({
    @required this.category,
    @required this.id,
    @required this.isFeatured,
    @required this.destination,
    @required this.layover,
  })  : assert(category != null),
        assert(id != null),
        assert(isFeatured != null),
        assert(destination != null),
        assert(layover != null);

  final Category category;
  final int id;
  final bool isFeatured;
  final String destination;
  final bool layover;
// TODO(tianlun): change to crane images
  String get assetName => 'assets/$id.png';

  @override
  String toString() => '$destination (id=$id)';
}
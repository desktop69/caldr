import 'app_event.dart';
import 'package:firebase_helpers/firebase_helpers.dart';

import 'data_constants.dart';

final eventDBS = DatabaseService<AppEvent>(
  AppDBConstants.eventsCollection,
  fromDS: (id, data) => AppEvent.fromDS(id, data!),
  toMap: (event) => event.toMap(),
);

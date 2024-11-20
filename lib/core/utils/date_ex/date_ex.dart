import 'package:intl/intl.dart';

extension DateEx on DateTime {
  String get toFormatedDate {
    return '$day/$month/$year';
  }

  String get getDayName {
    DateFormat formatter = DateFormat('E');
    return formatter.format(this);
  }
}

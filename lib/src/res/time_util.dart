import 'package:intl/intl.dart';

class TimeUtil {
  static String getFullDate(DateTime fullDate) {
    return DateFormat('d/MM/yyyy HH:MM').format(fullDate);
  }
}
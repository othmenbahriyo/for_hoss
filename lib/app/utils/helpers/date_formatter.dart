import 'package:intl/intl.dart';

/// intl package to structure date format
final DateFormat formatterYear = DateFormat('yyyy-MM-dd');
final DateFormat formatterTime= DateFormat('hh:mm');

/// format date
String formatDate(String s) {
  return DateFormat.yMMMMEEEEd().add_jms().format(DateTime.parse(s)).split(',')[0] + DateFormat.yMMMMEEEEd().add_jms().format(DateTime.parse(s)).split(',')[1];
}

String formatDateOnly(String s) {
  return formatterYear.format(DateTime.parse(s));
}

String formatTimeOnly(String s) {
  return formatterTime.format(DateTime.parse(s));
}

String printDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, "0");
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
  return "${twoDigits(duration.inHours)}h:$twoDigitMinutes";
}
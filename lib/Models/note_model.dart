import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class NoteMoldel extends HiveObject {
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String suptitle;
  @HiveField(3)
  final String date;
  @HiveField(4)
  final int color;
  NoteMoldel({
    required this.title,
    required this.suptitle,
    required this.date,
    required this.color,
  });
}

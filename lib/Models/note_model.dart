import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class NoteMoldel extends HiveObject {
  @HiveField(1)
  final String titel;
  @HiveField(2)
  final String supTitel;
  @HiveField(3)
  final String date;
  @HiveField(4)
  final int color;
  NoteMoldel({
    required this.titel,
    required this.supTitel,
    required this.date,
    required this.color,
  });
}

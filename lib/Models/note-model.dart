import 'package:hive/hive.dart';
part 'package:notsapp/Models/note-model.g.dart';

@HiveType(typeId: 0)
class NoteMoldel extends HiveObject {
  @HiveField(0)
  final String titel;
  @HiveField(1)
  final String supTitel;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteMoldel(
      {required this.titel,
      required this.supTitel,
      required this.date,
      required this.color});
}

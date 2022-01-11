import 'package:json_annotation/json_annotation.dart';
part 'item.g.dart';
@JsonSerializable()

class Item {
  late int id;
  late String league;
  late String club;
  late String urlImage;


  Item(this.id, this.league, this.club, this.urlImage);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJSON() => _$ItemToJson(this);
}


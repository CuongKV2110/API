import 'package:json_annotation/json_annotation.dart';
import '../item.dart';
import 'api_response.dart';
part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse extends ApiResponse {
  final List<Item> data;
  final bool success;

  HomeResponse(this.data, this.success) : super(success: success);

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);

  Map<String, dynamic> toJSON() => _$HomeResponseToJson(this);

}

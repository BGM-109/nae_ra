import 'package:json_annotation/json_annotation.dart';

part 'raffle_model.g.dart';

@JsonSerializable()
class RaffleModel {
  final String img;
  final String link;
  final String content;

  RaffleModel(this.img, this.link, this.content);

  factory RaffleModel.fromJson(Map<String, dynamic> json) => _$RaffleModelFromJson(json);

  Map<String, dynamic> toJson() => _$RaffleModelToJson(this);


}

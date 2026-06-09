import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token_model.g.dart';

@JsonSerializable()
class AccessTokenModel {
  AccessTokenModel({required this.token, this.opaqueToken, required this.tokenType});
  @JsonKey(name: "access_token")
  final String token;
  @JsonKey(name:"opaque_token")
  final String? opaqueToken;

  @JsonKey(name: "token_type")
  final String? tokenType;

  factory AccessTokenModel.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccessTokenModelToJson(this);
}

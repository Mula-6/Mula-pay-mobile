import 'package:freezed_annotation/freezed_annotation.dart';
part 'current_user_model.freezed.dart';
part 'current_user_model.g.dart';

@freezed
sealed class CurrentUserModel with _$CurrentUserModel {
  const factory CurrentUserModel({
    @JsonKey(name: "base_info")
    required UserBasicInFormation baseInfo,

  }) = _CurrentUserModel;

  factory CurrentUserModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserModelFromJson(json);
}




@freezed
sealed class UserBasicInFormation with _$UserBasicInFormation {
  const factory UserBasicInFormation({
    required String id,
    required String email,
    @JsonKey(name: "firstname") required String firstName,
    @JsonKey(name: "lastname") required String lastName,
    @JsonKey(name: "is_enabled") required bool isEnabled,
    @JsonKey(name: "is_email_verified") required bool isEmailVerified,
     required String role,
    @JsonKey(name: "kyc_verification_status") String? kycVerificationStatus,
  }) = _UserBasicInFormation;

  factory UserBasicInFormation.fromJson(Map<String, dynamic> json) =>
      _$UserBasicInFormationFromJson(json);
}



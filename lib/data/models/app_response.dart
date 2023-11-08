import 'errors.dart';
import 'meta.dart';

class AppResponse {
  int? status;
  int? code;
  String? locale;
  String? message;
  dynamic data;
  Errors? errors;
  Meta? meta;

  AppResponse({
    required this.data,
    this.status,
    this.code,
    this.locale,
    this.message,
    this.errors,
    this.meta,
  });

  factory AppResponse.fromJson(Map<String, dynamic> json) => AppResponse(
        status: json['status'],
        code: json['code'],
        locale: json['locale'],
        message: json['message'],
        data: json['data'],
        errors: json['errors'] == null ? null : Errors.fromJson(json['errors']),
        meta: json['meta'] == null ? null : Meta.fromJson(json['meta']),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'code': code,
        'locale': locale,
        'message': message,
        'data': data,
        'meta': meta,
      };

  //create a function to check if the first message and return it
  String? getFirstError() {
    if (errors != null) {
      if (errors!.email.isNotEmpty) {
        return errors!.email.first;
      } else if (errors!.mobile.isNotEmpty) {
        return errors!.mobile.first;
      } else if (errors!.userName.isNotEmpty) {
        return errors!.userName.first;
      } else if (errors!.password.isNotEmpty) {
        return errors!.password.first;
      } else if (errors!.keyEmailOrMobile.isNotEmpty) {
        return errors!.keyEmailOrMobile.first;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}

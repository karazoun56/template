class Errors {
  Errors({
    this.email = const [],
    this.mobile = const [],
    this.userName = const [],
    this.password = const [],
    this.keyEmailOrMobile = const [],
    this.message = '',
  });

  List<String> email;
  List<String> mobile;
  List<String> userName;
  List<String> password;
  List<String> keyEmailOrMobile;
  String message;

  factory Errors.fromJson(Map<String, dynamic> json, {String? message}) =>
      Errors(
        message: message ?? '',
        email: json['email'] == null
            ? []
            : List<String>.from((json['email'] as List).map((x) => x)),
        mobile: json['mobile'] == null
            ? []
            : List<String>.from((json['mobile'] as List).map((x) => x)),
        userName: json['username'] == null
            ? []
            : List<String>.from((json['username'] as List).map((x) => x)),
        password: json['password'] == null
            ? []
            : List<String>.from((json['password'] as List).map((x) => x)),
        keyEmailOrMobile: json['key_email_or_mobile'] == null
            ? []
            : List<String>.from(
                (json['key_email_or_mobile'] as List).map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'email': email,
        'mobile': mobile,
      };
}

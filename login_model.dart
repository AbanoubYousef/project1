class LoginModel {
  LoginModel({
    required this.isAthurized,
    required this.deviceStatus,
    required this.message,
    required this.status,
    required this.token,
  });

  final bool isAthurized;
  final bool deviceStatus;
  final String message;
  final bool status;
  final String token;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        isAthurized: json["isAthurized"],
        deviceStatus: json["deviceStatus"],
        message: json["message"],
        status: json["status"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "isAthurized": isAthurized,
        "deviceStatus": deviceStatus,
        "message": message,
        "status": status,
        "token": token,
      };
}

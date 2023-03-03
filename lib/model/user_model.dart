import 'package:flutter/cupertino.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imgAvatar;
  final String birthDate;

  UserModel({
    required this.name,
    required this.imgAvatar,
    required this.birthDate,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {//notifica essa classe ao ser modificado os atributos
    return name != oldWidget.name ||
        imgAvatar != oldWidget.imgAvatar ||
        birthDate != oldWidget.birthDate;
  }

  static UserModel of(BuildContext context) {
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(userModel != null, 'UserModel not exits in BuildContext');
    return userModel!;
  }
}

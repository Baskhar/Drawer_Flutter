import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/home/home_page.dart';
import 'package:flutter_inherited_widget/model/user_model.dart';
import 'package:flutter_inherited_widget/splash/splash_page.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: 'Walysson',
      birthDate: '30/08/2001',
      imgAvatar: 'https://f.i.uol.com.br/fotografia/2021/02/18/1613671083602eaaabe3537_1613671083_3x2_md.jpg',
      child: MaterialApp(
        //home: SplashPage(),
        routes: {
          '/': (_) => SplashPage(),
          '/home': (_) => HomePage(),
        },
      ),
    );
  }
}

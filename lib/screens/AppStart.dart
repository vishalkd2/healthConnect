import 'package:flutter/material.dart';
import 'package:healthconnect/screens/Introduction.dart';
import 'package:healthconnect/screens/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStart extends StatelessWidget {
  const AppStart({super.key});

  @override
  Widget build(BuildContext context) {
    _checkFirstLaunch(context);
    return Container();
  }
  Future<void> _checkFirstLaunch(BuildContext context)async{
    final prefs=await SharedPreferences.getInstance();
    bool isFirstLaunch=prefs.getBool('isFirstLaunch') ?? true;

    if(isFirstLaunch){
      prefs.setBool('isFirstLaunch',false);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Introduction()));
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
    }
  }
}

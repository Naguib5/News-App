
import 'package:flutter/cupertino.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Settings screen',style: TextStyle(
        fontSize: 20.0 ,
        fontWeight: FontWeight.bold ,
      ),),
    );
  }
}

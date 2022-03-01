import 'package:flutter/material.dart';
import 'package:singleton_pattern/user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  UserModel userModel = UserModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: _controller,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  userModel.setName = _controller.text;
                },
                child: const Text("Kaydet"),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  print(userModel.getName);
                },
                child: const Text("Debug Yazdır"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

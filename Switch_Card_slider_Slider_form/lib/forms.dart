import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _Form();
}

class _Form extends State<MyForm> {
  final keys = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool hidePass = true;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Form(
            key: keys,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      labelText: "Username",
                      border: OutlineInputBorder(),
                      hintText: "Enter Name",
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your name";
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: passwordController,
                    obscureText: hidePass,
                    decoration: const InputDecoration(
                      suffix: IconButton(
                        icon: Icon(hidePass ? Icons.lock : Icons.lock_open),
                        onPressed: () {},
                      ),
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      hintText: "Enter Password",
                    ),
                    validator: (String? value) {
                      RegExp regex = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      if (value == null || value.isEmpty) {
                        return "Please enter Password";
                      } else if (!regex.hasMatch(value)) {
                        return '''Password must contain alteast 1 number,
                                  1 uppercase letter,
                                  1 lowercase letter,
                                  1 special character
                                  and must be 8 characters long
                                   ''';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (keys.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(
                                  "Congrates your form created Username:${usernameController.text} & password : ${passwordController.text}"),
                              actions: [
                                TextButton(
                                  child: const Text('Approve'),
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/list');
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text("Submit"))
              ],
            )),
      ),
    );
  }
}

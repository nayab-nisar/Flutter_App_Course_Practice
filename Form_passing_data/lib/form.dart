import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyRegister> {
  final keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FormExample(),
      ),
    );
  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  DateTime? selectedDate;
  String? name;
  String? id;
  String? password;
  String? gender;

  TextEditingController usernameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/hero.jpeg'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 10.0, right: 10.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: usernameController,
                keyboardType: TextInputType.text,
                style: const TextStyle(color: Colors.white, fontSize: 20.0),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  hintText: "UserName",
                  labelText: "Enter Name",
                  hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold), //hint text style
                  labelStyle: const TextStyle(
                      fontSize: 20, color: Colors.white), //label style
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: idController,
                keyboardType: TextInputType.text,
                style: const TextStyle(color: Colors.white, fontSize: 20.0),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  hintText: "ID No:",
                  labelText: "ID No:",
                  hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold), //hint text style
                  labelStyle: const TextStyle(
                      fontSize: 20, color: Colors.white), //label style
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Text(
                    "Gender",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CheckboxListTile(
                      // activeColor: Colors.white,
                      title: const Text(
                        "Male",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      value: gender == "Male",
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            gender = "Male";
                          }
                        });
                      }),
                  const SizedBox(
                    height: 5,
                  ),
                  CheckboxListTile(
                      // activeColor: Colors.white,
                      title: const Text(
                        "Female",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      value: gender == "Female",
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            gender = "Female";
                          }
                        });
                      }),
                  const SizedBox(
                    height: 5,
                  ),
                  CheckboxListTile(
                      // activeColor: Colors.white,
                      title: const Text(
                        "Other",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      value: gender == "Other",
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            gender = "Other";
                          }
                        });
                      }),
                ],
              ),
              TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: const TextStyle(color: Colors.white, fontSize: 27.0),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    hintText: "Password",
                    labelText: "Password",
                    hintStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold), //hint text style
                    labelStyle: const TextStyle(
                        fontSize: 20, color: Colors.white), //label style
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
              ElevatedButton(
                  onPressed: () {
                    // if (keys.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: const Text("Congrates your form created!  "),
                          actions: [
                            TextButton(
                              child: const Text('Approve'),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('data', arguments: [
                                  usernameController.text,
                                  passwordController.text,
                                  gender as String,
                                  idController.text
                                ]);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  // },
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}

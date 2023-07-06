import 'package:flutter/material.dart';
import 'package:sandi/screen/home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String user = "Sandi";
  String pass = "Sandi1234";
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 30),
                // Judul Aplikasi
                const Text(
                  'Tugu Pahlawan\nSurabaya',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                // Label "Log in"
                const Text(
                  'Log in',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                // Input field untuk username
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),

                const SizedBox(height: 10),

                // Input field untuk password
                TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),

                const SizedBox(height: 20),

                // Tombol Login
                ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    // Memeriksa username dan password yang dimasukkan
                    if (nameController.text == user &&
                        passwordController.text == pass) {
                      // Jika benar, pindah ke halaman Home dengan membawa data username
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(namevar: nameController.text),
                        ),
                      );
                    } else {
                      // Jika salah, tampilkan dialog error
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Error'),
                            content: const Text("Login Failed"),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                ),
                                child: const Text(
                                  'Close',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Teks "Does not have account?"
                    const Text('Does not have account?'),
                    // Tombol "Log in as Guest"
                    TextButton(
                      child: const Text(
                        'Log in as Guest',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        // Jika tombol ditekan, pindah ke halaman Home sebagai "Guest"
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(namevar: "Guest"),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.

class Login extends StatefulWidget {
  const Login({Key? key})
      : super(
            key:
                key); // Konstruktor yang menerima parameter key dengan tipe Key.

  @override
  _LoginState createState() =>
      _LoginState(); // Mengimplementasikan metode createState() yang mengembalikan instance dari _LoginState.
}

class _LoginState extends State<Login> {
  final _formKey =
      GlobalKey<FormState>(); // Mendeklarasikan GlobalKey untuk form.
  final _usernameCtrl =
      TextEditingController(); // Mendeklarasikan TextEditingController untuk input username.
  final _passwordCtrl =
      TextEditingController(); // Mendeklarasikan TextEditingController untuk input password.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login Admin", // Menampilkan teks "Login Admin" dengan gaya tertentu.
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 50),
                Center(
                  child: Form(
                    key: _formKey,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Column(
                        children: [
                          _usernameTextField(), // Memanggil widget _usernameTextField().
                          SizedBox(height: 20),
                          _passwordTextField(), // Memanggil widget _passwordTextField().
                          SizedBox(height: 40),
                          _tombolLogin(), // Memanggil widget _tombolLogin().
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _usernameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText:
              "Username"), // Memberikan label "Username" pada input field.
      controller: _usernameCtrl, // Menghubungkan controller dengan input field.
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText:
              "Password"), // Memberikan label "Password" pada input field.
      obscureText: true, // Mengatur input field menjadi bertipe password.
      controller: _passwordCtrl, // Menghubungkan controller dengan input field.
    );
  }

  Widget _tombolLogin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        child: Text("Login"), // Menampilkan teks "Login" pada tombol.
        onPressed: () {},
      ),
    );
  }
}
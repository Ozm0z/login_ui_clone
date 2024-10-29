import 'package:flutter/material.dart';
import 'package:login_ui_clone/core/my_button.dart';
import 'package:login_ui_clone/core/my_textfield.dart';
import 'package:login_ui_clone/core/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in method

  void signUserIn() {
    print('tıkaldın');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //logo
          const SizedBox(height: 50),
          const Icon(Icons.lock, size: 100),
          const SizedBox(height: 50),

          //Hoşgeldin seni özledik!
          Text(
            'Hoşgeldin! Seni özledik... ',
            style: TextStyle(color: Colors.grey[700], fontSize: 20),
          ),

          const SizedBox(height: 25),

          //textField username
          MyTextfield(
            labelText: 'Kullanıcı Adı',
            obscureText: false,
            controller: usernameController,
          ),

          const SizedBox(height: 25),

          //textfield password
          MyTextfield(
            labelText: 'Şifre',
            obscureText: true,
            controller: passwordController,
          ),

          const SizedBox(height: 10),
          //Şifreni mi unuttun?
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Şifreni mi unuttun?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
          ),
          //sign in button
          MyButton(text: 'Giriş Yap', onTap: signUserIn),

          const SizedBox(height: 50),

          //or contuine with:

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Divider(thickness: 0.5, color: Colors.grey[900]),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text('Veya şunlar ile giriş yap:'),
                ),
                Expanded(
                  child: Divider(thickness: 0.5, color: Colors.grey[900]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          //google or apple sign in buttons
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SquareTile(imagePath: 'assets/png/ic_google.png'),
              SizedBox(width: 25),
              SquareTile(imagePath: 'assets/png/ic_apple.png'),
              //  IconButton( style: ButtonStyle(), onPressed: () {}, icon: Image.asset('assets/png/ic_google.png', height: 40))
            ],
          ),
          const SizedBox(height: 50),

          //not a member?_Register now

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Henüz üye değil misin?',
                style: TextStyle(color: Colors.grey[700]),
              ),
              const SizedBox(width: 4),
              const Text(
                'Şimdi üye ol!',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'tela_inicio.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
      
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  void _validarLogin() {
    String email = _emailController.text.trim();
    String senha = _senhaController.text;

    if (email == 'admin@teste.com' && senha == '123456') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email ou senha inválidos.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

            Image.asset(
              'lib/asserts/login.png',
                width:350,
                height:250,
              ),
              SizedBox(height:24.0),
              TextFormField(
              decoration: InputDecoration(labelText: 'Email',
              prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ) 
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Senha',
               prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                _validarLogin();
              },
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Cor de fundo do botão
                foregroundColor: Colors.white, //Cor do texto do botão
                padding:EdgeInsets.symmetric(horizontal:40, vertical:15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),

               ),
               ),
       
                // Lógica de autenticação do usuário
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
           ),
            ),
          ],
        ),
      ),
    );
  }
}

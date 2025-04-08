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

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,

        ),
        ),
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
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) =>HomePage()),
                  );
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
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

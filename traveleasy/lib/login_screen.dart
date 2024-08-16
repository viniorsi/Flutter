import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/images/world-point.svg', // Usando o arquivo logo.svg do diretório
                height: 100.0, // Altura do SVG
                width:
                    80.0, // Largura do SVG (opcional, ajusta proporcionalmente)
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "TravelEase",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Join us and explore the world",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              // Campo de texto para o login
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Login',
                  border: OutlineInputBorder(),
                  filled: true, // Habilita o preenchimento da cor de fundo
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 16.0), // Espaçamento entre os campos
              // Campo de texto para a senha
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  filled: true, // Habilita o preenchimento da cor de fundo
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                  height: 24.0), // Espaçamento entre os campos e o botão
              // Botão de login
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xFF167AFA), // Define a cor azul específica
                  ),
                  padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 16.0), // Ajusta o padding
                  ),
                  minimumSize: WidgetStateProperty.all(
                    const Size(double.infinity,
                        48.0), // Ajusta o tamanho mínimo do botão
                  ),
                ),
                onPressed: () {
                  // Adicione aqui a ação para o botão de login
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white), // Ajusta o tamanho do texto
                ),
              ),
              const SizedBox(
                  height: 16.0), // Espaçamento entre o botão e o texto
              // RichText para o texto com hyperlink
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.white, // Cor padrão do texto
                    fontSize: 16.0,
                  ),
                  children: <TextSpan>[
                    const TextSpan(
                      text: 'Não possui conta? ',
                    ),
                    TextSpan(
                      text: 'Criar conta',
                      style: const TextStyle(
                        color: Color(0xFF167AFA), // Cor azul desejada
                        decoration:
                            TextDecoration.underline, // Sublinhado para o link
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Adicione a navegação para a tela de criação de usuário aqui
                          Navigator.pushNamed(context, '/create-account');
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../theme/app_cores.dart';
import '../widgets/campo_formulario.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _entrar() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Marca
              Center(
                child: Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    color: AppCores.vermelhoClaro,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Icon(
                    Icons.restaurant,
                    color: AppCores.vermelho,
                    size: 32,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Entrar',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              const Text(
                'Acesse sua conta para continuar.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: AppCores.textoSecundario),
              ),
              const SizedBox(height: 32),
              CampoFormulario(
                rotulo: 'E-mail',
                dica: 'Digite seu e-mail',
                controller: _emailController,
                tipoTeclado: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CampoFormulario(
                rotulo: 'Senha',
                dica: 'Digite sua senha',
                controller: _senhaController,
                senha: true,
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Esqueci minha senha',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppCores.vermelho,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: _entrar,
                style: FilledButton.styleFrom(
                  backgroundColor: AppCores.vermelho,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(0, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Entrar',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 24),
              const Row(
                children: [
                  Expanded(child: Divider(color: AppCores.borda)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'ou',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppCores.textoSecundario,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(color: AppCores.borda)),
                ],
              ),
              const SizedBox(height: 24),
              OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  minimumSize: const Size(0, 48),
                  side: const BorderSide(color: AppCores.borda),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: const Text(
                  'G',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppCores.vermelho,
                  ),
                ),
                label: const Text(
                  'Continuar com Google',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Não tem uma conta? ',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppCores.textoSecundario,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Criar conta',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppCores.vermelho,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

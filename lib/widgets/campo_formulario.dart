import 'package:flutter/material.dart';

import '../theme/app_cores.dart';

class CampoFormulario extends StatelessWidget {
  const CampoFormulario({
    super.key,
    required this.rotulo,
    required this.dica,
    this.controller,
    this.senha = false,
    this.tipoTeclado,
  });

  final String rotulo;
  final String dica;
  final TextEditingController? controller;
  final bool senha;
  final TextInputType? tipoTeclado;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          rotulo,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: senha,
          keyboardType: tipoTeclado,
          cursorColor: AppCores.vermelho,
          style: const TextStyle(fontSize: 13),
          decoration: InputDecoration(
            hintText: dica,
            hintStyle: const TextStyle(fontSize: 13, color: Colors.black38),
            filled: true,
            fillColor: AppCores.fundoCinza,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 14,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppCores.borda),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppCores.vermelho),
            ),
          ),
        ),
      ],
    );
  }
}

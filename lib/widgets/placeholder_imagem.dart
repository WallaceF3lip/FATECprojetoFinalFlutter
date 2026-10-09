import 'package:flutter/material.dart';

import '../theme/app_cores.dart';

class PlaceholderImagem extends StatelessWidget {
  const PlaceholderImagem({
    super.key,
    required this.largura,
    required this.altura,
    required this.texto,
  });

  final double largura;
  final double altura;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: largura,
      height: altura,
      decoration: BoxDecoration(
        color: const Color(0xFFE6E6E6),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black26),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(4),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 9, color: AppCores.textoSecundario),
      ),
    );
  }
}

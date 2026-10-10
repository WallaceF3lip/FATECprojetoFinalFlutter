import 'package:flutter/material.dart';

class ImagemArredondada extends StatelessWidget {
  const ImagemArredondada({
    super.key,
    required this.caminho,
    required this.largura,
    required this.altura,
    this.raio = 8,
  });

  final String caminho;
  final double largura;
  final double altura;
  final double raio;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(raio),
      child: Image.asset(
        caminho,
        width: largura,
        height: altura,
        fit: BoxFit.cover,
      ),
    );
  }
}

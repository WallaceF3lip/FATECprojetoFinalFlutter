import 'package:flutter/material.dart';

import '../theme/app_cores.dart';

class TituloSecao extends StatelessWidget {
  const TituloSecao({
    super.key,
    required this.titulo,
    this.textoAcao = 'Ver todas',
  });

  final String titulo;
  final String textoAcao;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titulo,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            textoAcao,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppCores.vermelho,
            ),
          ),
        ),
      ],
    );
  }
}

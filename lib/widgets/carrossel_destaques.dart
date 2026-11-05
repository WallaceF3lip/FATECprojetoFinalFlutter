import 'package:flutter/material.dart';

import '../theme/app_cores.dart';
import 'card_destaque.dart';

class CarrosselDestaques extends StatefulWidget {
  const CarrosselDestaques({super.key});

  @override
  State<CarrosselDestaques> createState() => _CarrosselDestaquesState();
}

class _CarrosselDestaquesState extends State<CarrosselDestaques> {
  static const _destaques = [
    (
      'Combo em dobro',
      '2 hambúrgueres + fritas com 30% off.',
      'img/default.png',
    ),
    (
      'Pizza família',
      'Pizza grande + refrigerante 2L por R\$ 59,90.',
      'img/default.png',
    ),
    (
      'Frete grátis',
      'Pedidos acima de R\$ 40,00 não pagam entrega.',
      'img/default.png',
    ),
  ];

  int _paginaAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
            itemCount: _destaques.length,
            onPageChanged: (index) => setState(() => _paginaAtual = index),
            itemBuilder: (context, index) {
              final (titulo, descricao, imagem) = _destaques[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: CardDestaque(
                  titulo: titulo,
                  descricao: descricao,
                  imagem: imagem,
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        // Indicadores de página
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_destaques.length, (index) {
            final ativo = index == _paginaAtual;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: ativo ? 18 : 6,
              height: 6,
              decoration: BoxDecoration(
                color: ativo ? AppCores.vermelho : AppCores.borda,
                borderRadius: BorderRadius.circular(3),
              ),
            );
          }),
        ),
      ],
    );
  }
}

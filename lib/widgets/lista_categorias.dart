import 'package:flutter/material.dart';

import '../theme/app_cores.dart';
import 'imagem_arredondada.dart';

class ListaCategorias extends StatelessWidget {
  const ListaCategorias({
    super.key,
    required this.selecionada,
    required this.onSelecionar,
  });

  final int selecionada;
  final ValueChanged<int> onSelecionar;

  static const _categorias = [
    ('Lanches', 'img/default_category.png'),
    ('Pizza', 'img/default_category.png'),
    ('Marmita', 'img/default_category.png'),
    ('Salgados', 'img/default_category.png'),
    ('Açaí', 'img/default_category.png'),
    ('Sorvete', 'img/default_category.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _categorias.length,
        separatorBuilder: (_, _) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final (nome, imagem) = _categorias[index];
          final ativa = index == selecionada;
          return GestureDetector(
            onTap: () => onSelecionar(index),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: ativa ? AppCores.vermelho : Colors.transparent,
                      width: 2,
                    ),
                  ),
                  child: ImagemArredondada(
                    caminho: imagem,
                    largura: 52,
                    altura: 52,
                    raio: 9,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  nome,
                  style: TextStyle(
                    fontSize: 11,
                    color: ativa ? AppCores.vermelho : Colors.black87,
                    fontWeight: ativa ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

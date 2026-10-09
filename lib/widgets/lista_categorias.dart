import 'package:flutter/material.dart';

import '../theme/app_cores.dart';

class ListaCategorias extends StatelessWidget {
  const ListaCategorias({
    super.key,
    required this.selecionada,
    required this.onSelecionar,
  });

  final int selecionada;
  final ValueChanged<int> onSelecionar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        separatorBuilder: (_, _) => const SizedBox(width: 24),
        itemBuilder: (context, index) {
          final ativa = index == selecionada;
          return GestureDetector(
            onTap: () => onSelecionar(index),
            child: Column(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: ativa
                        ? const Color(0xFFDDDDDD)
                        : AppCores.fundoCinza,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: ativa ? Colors.black54 : AppCores.borda,
                      width: ativa ? 1.5 : 1,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Ícone',
                      style: TextStyle(
                        fontSize: 9,
                        color: AppCores.textoSecundario,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Categoria ${index + 1}',
                  style: TextStyle(
                    fontSize: 10,
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

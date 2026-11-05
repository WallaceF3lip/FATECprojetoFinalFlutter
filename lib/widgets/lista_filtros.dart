import 'package:flutter/material.dart';

import '../theme/app_cores.dart';

class ListaFiltros extends StatelessWidget {
  const ListaFiltros({
    super.key,
    required this.filtros,
    required this.selecionado,
    required this.onSelecionar,
  });

  final List<String> filtros;
  final int selecionado;
  final ValueChanged<int> onSelecionar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: filtros.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final ativo = index == selecionado;
          return GestureDetector(
            onTap: () => onSelecionar(index),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: ativo ? AppCores.vermelho : Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: ativo ? AppCores.vermelho : AppCores.borda,
                ),
              ),
              child: Text(
                filtros[index],
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: ativo ? Colors.white : Colors.black87,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

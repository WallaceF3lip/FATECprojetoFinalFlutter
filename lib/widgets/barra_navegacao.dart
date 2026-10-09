import 'package:flutter/material.dart';

import '../theme/app_cores.dart';

class BarraNavegacao extends StatelessWidget {
  const BarraNavegacao({
    super.key,
    required this.selecionada,
    required this.onSelecionar,
  });

  final int selecionada;
  final ValueChanged<int> onSelecionar;

  static const _icones = [
    Icons.casino_outlined,
    Icons.search,
    Icons.receipt_long_outlined,
    Icons.person_outline,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: AppCores.borda)),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: List.generate(_icones.length, (index) {
              final ativa = index == selecionada;
              return Expanded(
                child: GestureDetector(
                  onTap: () => onSelecionar(index),
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: ativa ? AppCores.fundoCinza : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      _icones[index],
                      color: ativa ? Colors.black87 : Colors.black45,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

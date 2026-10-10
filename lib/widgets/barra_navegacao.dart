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

  static const _abas = [
    (Icons.home_outlined, 'Início'),
    (Icons.search, 'Busca'),
    (Icons.receipt_long_outlined, 'Pedidos'),
    (Icons.person_outline, 'Perfil'),
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
            children: List.generate(_abas.length, (index) {
              final (icone, rotulo) = _abas[index];
              final ativa = index == selecionada;
              final cor = ativa ? AppCores.vermelho : Colors.black45;
              return Expanded(
                child: GestureDetector(
                  onTap: () => onSelecionar(index),
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                      color:
                          ativa ? AppCores.vermelhoClaro : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icone, color: cor),
                        Text(
                          rotulo,
                          style: TextStyle(
                            fontSize: 10,
                            color: cor,
                            fontWeight:
                                ativa ? FontWeight.w600 : FontWeight.normal,
                          ),
                        ),
                      ],
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

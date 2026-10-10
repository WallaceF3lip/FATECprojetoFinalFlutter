import 'package:flutter/material.dart';

import '../theme/app_cores.dart';

class CabecalhoEndereco extends StatelessWidget {
  const CabecalhoEndereco({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.location_on, color: AppCores.vermelho, size: 22),
        const SizedBox(width: 6),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Entregar em',
                style: TextStyle(fontSize: 11, color: AppCores.textoSecundario),
              ),
              SizedBox(height: 2),
              Text(
                'Endereço do usuário',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(foregroundColor: AppCores.vermelho),
          child: const Text(
            'Alterar',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(width: 4),
        FilledButton.icon(
          onPressed: () {},
          style: FilledButton.styleFrom(
            backgroundColor: AppCores.vermelho,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          icon: const Icon(Icons.shopping_bag_outlined, size: 18),
          label: const Text('Carrinho'),
        ),
      ],
    );
  }
}

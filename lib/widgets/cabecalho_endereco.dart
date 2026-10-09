import 'package:flutter/material.dart';

import '../theme/app_cores.dart';

class CabecalhoEndereco extends StatelessWidget {
  const CabecalhoEndereco({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
          style: TextButton.styleFrom(foregroundColor: Colors.black87),
          child: const Text('Alterar', style: TextStyle(fontSize: 12)),
        ),
        const SizedBox(width: 4),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black87,
            side: const BorderSide(color: Colors.black54),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Carrinho'),
        ),
      ],
    );
  }
}

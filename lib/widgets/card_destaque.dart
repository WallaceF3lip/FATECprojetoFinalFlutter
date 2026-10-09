import 'package:flutter/material.dart';

import '../theme/app_cores.dart';
import 'placeholder_imagem.dart';

class CardDestaque extends StatelessWidget {
  const CardDestaque({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppCores.fundoCinza,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppCores.borda),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'DESTAQUE',
                  style: TextStyle(
                    fontSize: 9,
                    letterSpacing: 1,
                    color: AppCores.textoSecundario,
                  ),
                ),
                const SizedBox(height: 14),
                const Text(
                  'Título da promoção',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 2),
                const Text(
                  'Breve descrição da promoção.',
                  style: TextStyle(
                    fontSize: 10,
                    color: AppCores.textoSecundario,
                  ),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black87,
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black54),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    minimumSize: const Size(0, 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'Ver promoção',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          const PlaceholderImagem(
            largura: 128,
            altura: 88,
            texto: 'Espaço para imagem',
          ),
        ],
      ),
    );
  }
}

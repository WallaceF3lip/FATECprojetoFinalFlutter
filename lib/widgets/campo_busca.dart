import 'package:flutter/material.dart';

import '../theme/app_cores.dart';

class CampoBusca extends StatelessWidget {
  const CampoBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppCores.fundoCinza,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppCores.borda),
      ),
      child: Row(
        children: [
          const Text(
            'Buscar',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          Container(
            width: 1,
            height: 16,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            color: AppCores.borda,
          ),
          const Expanded(
            child: TextField(
              style: TextStyle(fontSize: 12),
              decoration: InputDecoration(
                hintText: 'Digite um produto ou restaurante',
                hintStyle: TextStyle(fontSize: 12, color: Colors.black38),
                border: InputBorder.none,
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

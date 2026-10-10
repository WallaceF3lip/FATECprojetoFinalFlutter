import 'package:flutter/material.dart';

import '../theme/app_cores.dart';

class CampoBusca extends StatelessWidget {
  const CampoBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppCores.fundoCinza,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppCores.borda),
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: AppCores.vermelho, size: 20),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              cursorColor: AppCores.vermelho,
              style: TextStyle(fontSize: 13),
              decoration: InputDecoration(
                hintText: 'Digite um produto ou restaurante',
                hintStyle: TextStyle(fontSize: 13, color: Colors.black38),
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

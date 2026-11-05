import 'package:flutter/material.dart';

import '../theme/app_cores.dart';
import '../widgets/campo_busca.dart';
import '../widgets/card_produto.dart';
import '../widgets/lista_filtros.dart';

class BuscaScreen extends StatefulWidget {
  const BuscaScreen({super.key});

  @override
  State<BuscaScreen> createState() => _BuscaScreenState();
}

class _BuscaScreenState extends State<BuscaScreen> {
  static const _filtros = [
    'Todos',
    'Próximos',
    'Entrega rápida',
    'Melhor avaliação',
  ];

  // (restaurante, nome, preço)
  static const _produtos = [
    ('Burger King', 'X-Bacon Artesanal', 'R\$ 32,90'),
    ('Pizzaria Napoli', 'Pizza Margherita', 'R\$ 54,90'),
    ('Açaí da Vila', 'Açaí 500ml', 'R\$ 22,00'),
    ('Sushi House', 'Combo 20 peças', 'R\$ 69,90'),
    ('Marmitaria Caseira', 'Marmita de Frango', 'R\$ 24,90'),
  ];

  int _filtroSelecionado = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Parte fixa: título, busca e filtros
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'EXPLORAR',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                    color: AppCores.textoSecundario,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Buscar',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const CampoBusca(dica: 'Produto, categoria ou restaurante'),
                const SizedBox(height: 24),
                const Text(
                  'Filtros',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListaFiltros(
              filtros: _filtros,
              selecionado: _filtroSelecionado,
              onSelecionar: (index) =>
                  setState(() => _filtroSelecionado = index),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Resultados',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${_produtos.length} itens',
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppCores.textoSecundario,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          // Parte rolável: resultados
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              itemCount: _produtos.length,
              separatorBuilder: (_, _) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final (restaurante, nome, preco) = _produtos[index];
                return CardProduto(
                  imagem: 'img/default.png',
                  restaurante: restaurante,
                  nome: nome,
                  preco: preco,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

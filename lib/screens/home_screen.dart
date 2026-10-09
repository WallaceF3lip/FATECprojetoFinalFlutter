import 'package:flutter/material.dart';

import '../theme/app_cores.dart';
import '../widgets/barra_navegacao.dart';
import '../widgets/cabecalho_endereco.dart';
import '../widgets/campo_busca.dart';
import '../widgets/card_destaque.dart';
import '../widgets/card_produto.dart';
import '../widgets/lista_categorias.dart';
import '../widgets/titulo_secao.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _abaSelecionada = 0;
  int _categoriaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Parte fixa: endereço, saudação e busca
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 16, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CabecalhoEndereco(),
                  SizedBox(height: 28),
                  Text(
                    'Olá, usuário',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppCores.textoSecundario,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'O que você deseja\npedir?',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      height: 1.15,
                    ),
                  ),
                  SizedBox(height: 24),
                  CampoBusca(),
                ],
              ),
            ),
            // Parte rolável
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CardDestaque(),
                    const SizedBox(height: 24),
                    const TituloSecao(titulo: 'Categorias'),
                    const SizedBox(height: 14),
                    ListaCategorias(
                      selecionada: _categoriaSelecionada,
                      onSelecionar: (index) =>
                          setState(() => _categoriaSelecionada = index),
                    ),
                    const SizedBox(height: 24),
                    const TituloSecao(
                      titulo: 'Produtos em destaque',
                      textoAcao: 'Ver todos',
                    ),
                    const SizedBox(height: 14),
                    const CardProduto(),
                    const SizedBox(height: 12),
                    const CardProduto(),
                    const SizedBox(height: 12),
                    const CardProduto(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BarraNavegacao(
        selecionada: _abaSelecionada,
        onSelecionar: (index) => setState(() => _abaSelecionada = index),
      ),
    );
  }
}

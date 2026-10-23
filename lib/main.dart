import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp()); // Ajustado para corresponder ao nome da classe
}

class MyApp extends StatelessWidget { // Convenção: classe começa com Letra Maiúscula
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Variáveis fornecidas (Sua lógica de dados/estado)
  final String _nomeUsuario = "Erick";
  final String _nomeProjeto = "app_sobre";
  final String _infomacaoProjeto = "Projeto flutter";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      
      // Título (AppBar)
      appBar: AppBar(
        title: const Text(
          'App Sobre',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      
      // Corpo da Página (Onde fica a estrutura visual / "HTML")
      body: Center( // Adicionado para centralizar a Column na tela inteira
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            //tabela ou coluna
            children: [
              Text(
                'Usuário: $_nomeUsuario',
                style: const TextStyle(fontSize: 26, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                'Projeto: $_nomeProjeto',
                style: const TextStyle(fontSize: 26, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                'Info: $_infomacaoProjeto',
                style: const TextStyle(fontSize: 22, color: Colors.white),
              ),
              const SizedBox(height: 100),
              
              // Bloco de Botões (Salvar e Cancelar)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {}, // Sem evento por enquanto
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text('Salvar', style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {}, // Sem evento por enquanto
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text('Cancelar', style: TextStyle(color: Colors.white)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      
      // Rodapé da página
      bottomNavigationBar: BottomAppBar(
        color: Colors.cyan,
        child: const Center(
          child: Text(
            'Rodapé do Projeto',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_formulario_filmes/filme.dart';

class MyFormulario extends StatefulWidget {
  const MyFormulario({super.key});

  @override
  State<MyFormulario> createState() => _MyFormularioState();
}

class _MyFormularioState extends State<MyFormulario> {
  TextEditingController controladorNome = TextEditingController();
  TextEditingController controladorEmail = TextEditingController();
  TextEditingController controladorFavorito = TextEditingController();
  bool romance = false;
  bool terror = false;
  bool drama = false;
  bool comedia = false;
  bool documental = false;
  bool acao = false;
  bool notifications = false;
  String mvdc = "";
  
  List<bool> interesses = [false, false, false, false, false, false];
  List<Filme> cadastro = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário de Filmes Favoritos", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.red[400],
        centerTitle: true,),
      body: SingleChildScrollView(child: Center(child: Column(children: [
        SizedBox(height: 5,),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network("https://images.vexels.com/media/users/3/299280/isolated/preview/6867d8104ecb9a14cc7e7c6c2ca645dc-claquete-azul.png", height: 100,),
          Image.network("https://images.vexels.com/media/users/3/200470/isolated/preview/912b70585a5a9eed838dba9622e42404-carnival-popcorn-color.png", height: 100,),
          Image.network("https://images.vexels.com/media/users/3/299367/isolated/preview/50ac129fb016f89f1a7737d44729d187-ingressos-de-cinema.png", height: 100,)
        ],),
        SizedBox(height: 10,),
        Container(
        padding: EdgeInsets.all(20), 
        child: Column(children: [
        TextField(
         controller: controladorNome,
         onChanged: (value) {
          print(value);
         },
         decoration: InputDecoration(
          fillColor: Color.fromARGB(255, 255, 255, 255),
          labelText: "Nome",
          prefixIcon: Icon(Icons.face),
         ),
        ),
        SizedBox(height: 10,),
        TextField(
         controller: controladorEmail,
         onChanged: (value) {
          print(value);
         },
         decoration: InputDecoration(
          fillColor: Color.fromARGB(255, 255, 255, 255),
          labelText: "Email",
          prefixIcon: Icon(Icons.email_outlined),
         ),
        ),
        SizedBox(height: 30,),
        Text("Escolha seus gêneros favoritos", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold, fontSize: 20)),
        CheckboxListTile(
          title: Text("Romance"),
          value: romance, 
          onChanged: (value){
            romance = value!;
            interesses[0] = true;
            setState(() {
              
            });
          }),
        CheckboxListTile(
          title: Text("Terror"),
          value: terror, 
          onChanged: (value){
            terror = value!;
            interesses[1] = true;
            setState(() {
              
            });
          }),
        CheckboxListTile(
          title: Text("Drama"),
          value: drama, 
          onChanged: (value){
            drama = value!;
            interesses[2] = true;
            setState(() {
              
            });
          }),
        CheckboxListTile(
          title: Text("Comedia"),
          value: comedia, 
          onChanged: (value){
            comedia = value!;
            interesses[3] = true;
            setState(() {
              
            });
          }),
        CheckboxListTile(
          title: Text("Documental"),
          value: documental, 
          onChanged: (value){
            documental = value!;
            interesses[4] = true;
            setState(() {
              
            });
          }),
        CheckboxListTile(
          title: Text("Ação"),
          value: acao, 
          onChanged: (value){
            acao = value!;
            interesses[5] = true;
            setState(() {
              
            });
          }),
        Divider(thickness: 1, color: Color.fromARGB(255, 0, 0, 0),),
        SizedBox(height: 10,),
        Text("Marvel ou DC?", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold, fontSize: 20)),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Marvel", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
          Radio(
          value: "Marvel", 
          groupValue: mvdc, 
          onChanged: (value){
            mvdc = value!;
            setState(() {
              
            });
          }),
          Text("DC", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
          Radio(
          value: "DC", 
          groupValue: mvdc, 
          onChanged: (value){
            mvdc = value!;
            setState(() {
              
            });
          })
        ],),
        Divider(thickness: 1, color: Color.fromARGB(255, 0, 0, 0),),
        SizedBox(height: 10,),
        Text("Qual o seu filme favorito?", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold, fontSize: 20)),
        TextField(
         controller: controladorFavorito,
         onChanged: (value) {
          print(value);
         },
         decoration: InputDecoration(
          fillColor: Color.fromARGB(255, 255, 255, 255),
          labelText: "Filme favorito",
          prefixIcon: Icon(Icons.movie),
         ),
        ),
        SwitchListTile(
          title: Text("Permitir o envio de notificações no email"),
          value: notifications, 
          onChanged: (value){
            notifications = value;
            setState(() {
              
            });
          }),
        ElevatedButton(onPressed: (){
          String nome = controladorNome.text;
          String email = controladorEmail.text;
          String favorito = controladorFavorito.text;
          bool notificacoes = notifications;
          Filme fm = new Filme(nome, email, interesses, mvdc, favorito, notificacoes);
          cadastro.add(fm);

           print('Resultados:\n======================'); 
           for (var p in cadastro){ 
            print('Nome: ' + p.nome.toString()); 
            print('Email: ' + p.email.toString()); 
            print('Romance: ' + p.interesses[0].toString()); 
            print('Terror: ' + p.interesses[1].toString()); 
            print('Drama: ' + p.interesses[2].toString()); 
            print('Comédia: ' + p.interesses[3].toString()); 
            print('Documental: ' + p.interesses[4].toString());
            print('Ação: ' + p.interesses[5].toString()); 
            print('Marvel ou DC: ' + p.mvdc.toString()); 
            print('Filme Favorito:' + p.favorito.toString());
            print('Notificação: ' + p.notificacoes.toString()); 
            print('======================');
          }
          controladorEmail.clear();
          controladorNome.clear();
          controladorFavorito.clear();
          romance = false;
          interesses[0] = false;
          terror = false;
          interesses[1] = false;
          drama = false;
          interesses[2] = false;
          comedia = false;
          interesses[3] = false;
          documental = false;
          interesses[4] = false;
          acao = false;
          interesses[5] = false;
          notifications = false;
          mvdc = "";
          setState(() {
            
          });
        }, child: Text("Enviar", style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Cor de fundo do botão
              onPrimary: Color.fromARGB(255, 0, 0, 0), // Cor do texto do botão
            ),)
        ]),)
      ]),),
      )  
    );
  }
}
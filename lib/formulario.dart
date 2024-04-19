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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário de Filmes Favoritos", style: TextStyle(color: Colors.white),),
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
         controller: controladorNome,
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
        Text("Escola seus gêneros favoritos"),
        CheckboxListTile(
          title: Text("Romance"),
          value: romance, 
          onChanged: (value){
            romance = value!;
            setState(() {
              
            });
          }),
        CheckboxListTile(
          title: Text("Terror"),
          value: terror, 
          onChanged: (value){
            terror = value!;
            setState(() {
              
            });
          }),
        CheckboxListTile(
          title: Text("Drama"),
          value: drama, 
          onChanged: (value){
            drama = value!;
            setState(() {
              
            });
          }),
        CheckboxListTile(
          title: Text("Comedia"),
          value: comedia, 
          onChanged: (value){
            comedia = value!;
            setState(() {
              
            });
          }),
        CheckboxListTile(
          title: Text("Documental"),
          value: documental, 
          onChanged: (value){
            documental = value!;
            setState(() {
              
            });
          }),
        CheckboxListTile(
          title: Text("Ação"),
          value: acao, 
          onChanged: (value){
            acao = value!;
            setState(() {
              
            });
          }),
        Divider(thickness: 1, color: Color.fromARGB(255, 0, 0, 0),),
        Text("Marvel ou DC?"),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Marvel"),
          Radio(
          value: "Marvel", 
          groupValue: mvdc, 
          onChanged: (value){
            mvdc = value!;
            setState(() {
              
            });
          }),
          Text("DC"),
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
        Text("Qual o seu filme favorito?"),
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
          String notificacoes = notifications.toString();
          String mvdc2 = mvdc;
          Filme fm = new Filme(nome, email, mvdc2, favorito, notificacoes);
          
        }, child: Text("Enviar"))
        ]),)
      ]),),
      )  
    );
  }
}
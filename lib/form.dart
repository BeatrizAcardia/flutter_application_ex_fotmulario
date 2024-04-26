// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_ex_fotmulario/info.dart';

class Meuformulario extends StatefulWidget {
  const Meuformulario({super.key});

  @override
  State<Meuformulario> createState() => _MeuformularioState();
}

class _MeuformularioState extends State<Meuformulario> {
  final brain = SizedBox(
      height: 80,
      width: 80,
      child: Image.asset('assets/img/brainstorm_6988567.png'));
  final certificate = SizedBox(
      height: 80,
      width: 80,
      child: Image.asset('assets/img/certificate_6988174.png'));
  final grades = SizedBox(
      height: 80,
      width: 80,
      child: Image.asset('assets/img/grades_6988458.png'));

  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String somente = " ";

  bool _op1 = false;
  bool _op2 = false;
  bool _op3 = false;

  bool permitir = false;

  List<info> listainfo = [];
  List<String> listaInteresse = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        centerTitle: true,
        title: Text("Formulário de interesse",
            style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic)),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 10),
              certificate,
              brain,
              grades,
              SizedBox(height: 10)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: nomeController,
            decoration: InputDecoration(
                labelText: "Nome:",
                prefixIcon: Icon(Icons.emoji_people_rounded)),
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
                labelText: "Email:", prefixIcon: Icon(Icons.email_outlined)),
          ),
          SizedBox(
            height: 30,
          ),
          Text("Tipo de curso: ",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Somente curso técnico"),
              Radio(
                value: "Somente tecnico",
                groupValue: somente,
                onChanged: (value) {
                  somente = value!;
                  setState(() {});
                },
              ),
              Text("Integrado ao médio"),
              Radio(
                value: "Integrado",
                groupValue: somente,
                onChanged: (value) {
                  somente = value!;
                  setState(() {});
                },
              )
            ],
          ),
          Divider(
            thickness: 1.5,
            color: const Color.fromARGB(204, 158, 158, 158),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Oficinas de Interesse: ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontStyle: FontStyle.italic),
          ),
          CheckboxListTile(
            title: Text("Ecrita científica"),
            value: _op1,
            onChanged: (value) {
              _op1 = value!;
              if (_op1 == true){
                listaInteresse.add("Escrita cientifica");
              }
              setState(() {});
            },
          ),
          CheckboxListTile(
            title: Text("Literatura Africana"),
            value: _op2,
            onChanged: (value) {
              _op2 = value!;
               if (_op2 == true){
                listaInteresse.add("Literatura Africana");
              }
              setState(() {});
            },
          ),
          CheckboxListTile(
            title: Text("Artes"),
            value: _op3,
            onChanged: (value) {
              _op3 = value!;
               if (_op3 == true){
                listaInteresse.add("Artes");
              }
              setState(() {});
            },
          ),
          Divider(
            thickness: 1.5,
            color: const Color.fromARGB(204, 158, 158, 158),
          ),

          SwitchListTile(
            title: Text("Permitir envio de notificações no email"),
            value: permitir,
            onChanged: (value) {
              permitir = value;
              setState(() {});
            },
          ),

          Divider(
            thickness: 1.5,
            color: const Color.fromARGB(204, 158, 158, 158),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    info i = info(nomeController.text, emailController.text, somente, listaInteresse, permitir);
                    mostrar();
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 185, 152, 239), // Change this to the desired color
                    ),
                  child: Text("Enviar", style: TextStyle(color: Colors.white),)),

                SizedBox(width: 40),

              ElevatedButton(
                  onPressed: () {
           
                    setState(() {});
                  },
                   style: ElevatedButton.styleFrom(
                      backgroundColor:  Color.fromARGB(255, 185, 152, 239), // Change this to the desired color
                    ),
                  child: Text("Cancelar", style: TextStyle(color: Colors.white),)),
            ],
          )
        ],
      )),
      
    );
  }
  
  void mostrar(){
    listainfo.forEach((info i){
    print("=================================");
    print("Nome: " + i.getNome + "\n" + "Email: " + i.getEmail + "\n" + "Curso: " + i.getCurso + "\n");
      for (int i = 0; i < listaInteresse.length; i++){
        print("Interesse: " + listaInteresse[i]);
      }
      print("\nPermitir notificações: " + permitir.toString());
    });

  }
}

import 'package:flutter/material.dart';

class Meuformulario extends StatefulWidget {
  const Meuformulario({super.key});

  @override
  State<Meuformulario> createState() => _MeuformularioState();
}

class _MeuformularioState extends State<Meuformulario> {

  final brain = SizedBox(height:80, width: 80, child: Image.asset('assets/img/brainstorm_6988567.png'));
  final certificate = SizedBox(height: 80, width: 80, child: Image.asset('assets/img/certificate_6988174.png'));
  final grades = SizedBox(height: 80, width:80, child: Image.asset('assets/img/grades_6988458.png'));

  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String somente = " ";
  String integrado = " ";

  bool op1 = false;
  bool op2 = false;
  bool op3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        centerTitle: true,
        title: Text("Formulário de interesse!", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic)),),

        body: Center(child: Column(children: [
          SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(height: 10),
          certificate,
          brain,
          grades,
          SizedBox(height: 10)
          ],),
          
          SizedBox(height: 30,),

           TextField(
          controller: nomeController,
          decoration: InputDecoration(
            labelText: "Nome:",
            prefixIcon: Icon(Icons.emoji_people_rounded)
          ),
        ),

        TextField(
          controller: emailController,
          decoration: InputDecoration(labelText: "Email:",
          prefixIcon: Icon(Icons.email_outlined)
          ),
        ),

        SizedBox(height: 30,),
      
        Text("Tipo de curso: ", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 20)),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
         
          Text("Somente curso técnico"),
          Radio(
            value: "Somente tecnico", 
            groupValue: somente, 
            onChanged: (value) {
              somente = value!;
              setState(() {
                
              });
            },),

          Text("Integrado ao médio"),
          Radio(
            value: "Integrado", 
            groupValue: integrado, 
            onChanged: (value) {
              integrado = value!;
              setState(() {
                
              });
            },)
        ],),
           
           Divider(thickness: 1.5, color: const Color.fromARGB(204, 158, 158, 158),),

           SizedBox(height: 30,),

           Text("Oficinas de Interesse: ", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 20, fontStyle: FontStyle.italic),),


           CheckboxListTile(
            title: Text("Ecrita científica"),
            value: op1, 
            onChanged: (value) {
              op1 = value!;
              setState(() {
                
              });
            },
            ),

            CheckboxListTile(
              title: Text("Literatura Africana"),
              value: op2, 
              onChanged: (value) {
                op2 = value!;
                setState(() {
                  
                });
              },),

              CheckboxListTile(
                title: Text("Artes"),
                value: op3, 
                onChanged: (value) {
                  op3 = value!;
                  setState(() {
                    
                  });
                },),

        Divider(thickness: 1.5, color: const Color.fromARGB(204, 158, 158, 158),),

        SwitchListTile(
          title: Text("Permitir envio de notificações no email"),
          value: value, 
          onChanged: (value) {
            setState(() {
              
            });
          },)
                
        ],)),
    );
  }
}
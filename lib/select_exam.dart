import 'package:cuestionario_ejemplo/view_cuestionario.dart';
import 'package:flutter/material.dart';

class GoQuestions extends StatefulWidget {
  @override
  _GoQuestionsState createState() => _GoQuestionsState();
}

class _GoQuestionsState extends State<GoQuestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Selecciona un cuestionario'),
      ),
      body: Padding(
        padding: EdgeInsets.all(150.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Image.asset(
                  'img/logo_ibero.jpeg',
                  height: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CuestionarioPage()));
                  },
                  child: Text(
                    'Encuesta Coordinación de Idiomas',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

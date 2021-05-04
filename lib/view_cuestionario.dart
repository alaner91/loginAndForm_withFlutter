import 'package:flutter/material.dart';
import 'package:cuestionario_ejemplo/database_helper.dart';

class CuestionarioPage extends StatefulWidget {
  @override
  _CuestionarioPageState createState() => _CuestionarioPageState();
}

class _CuestionarioPageState extends State<CuestionarioPage> {
  TextEditingController respuestaController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Resuelve el siguiente cuestionario'),
      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    'img/logo_ibero.jpeg',
                    height: 100,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:
                          "¿Qué fue lo que más te gustó del curso / del profesor?"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText:
                            "¿Qué fue lo que más te gustó del curso / del profesor?"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "¿Qué mejorarías del curso/ profesor?"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText:
                            "¿Se cumplieron las expectativas que te planteaste para este curso?"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: TextFormField(
                    controller: respuestaController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText:
                            "¿Se te explicaron claramente los objetivos del curso?"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                SizedBox(
                  width: 300,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: () async {
                      int i = await DatabaseHelper.instance.insert({
                        DatabaseHelper.columnName: respuestaController.text
                      });

                      print('Estoy guardando $i');
                    },
                    child: Text(
                      'GUARDAR RESPUESTAS',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

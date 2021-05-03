import 'package:cuestionario_ejemplo/view_cuestionario.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState.validate()) {
      print("Validated");
    } else {
      print("Not validated");
    }
  }

  String validatepass(value) {
    if (value.isEmpty) {
      return "Contraseña requerida";
    } else if (value.length < 6) {
      return "La contraseña debe tener mínimo 6 caracteres";
    } else if (value.length > 15) {
      return "No debe ser mayor a 15 caracteres";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Ejemplo Cuestionario Ibero'),
      ),
      body: Padding(
        padding: EdgeInsets.all(150.0),
        child: Center(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: formkey,
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
                TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Correo Electrónico"),
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Correo requerido'),
                      EmailValidator(errorText: 'No es un correo valido'),
                    ])),
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Contraseña'),
                      validator: validatepass),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CuestionarioPage()));
                    },
                    child: Text('Entrar'),
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

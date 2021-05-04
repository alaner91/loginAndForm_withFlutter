import 'package:cuestionario_ejemplo/provider/google_sign_in.dart';
import 'package:flutter/material.dart';
// import 'package:cuestionario_ejemplo/select_exam.dart';
// import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'package:cuestionario_ejemplo/widget/sign_up_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ChangeNotifierProvider(
            create: (context) => GoogleSignInProvider(), child: SignUpWidget()),
      );
}

// class LoginPage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<LoginPage> {
// GlobalKey<FormState> formkey = GlobalKey<FormState>();

// void validate() {
//   if (formkey.currentState.validate()) {
//     print("Validated");
//   } else {
//     print("Not validated");
//   }
// }

// String validatepass(value) {
//   if (value.isEmpty) {
//     return "Contraseña requerida";
//   } else if (value.length < 6) {
//     return "La contraseña debe tener mínimo 6 caracteres";
//   } else if (value.length > 15) {
//     return "No debe ser mayor a 15 caracteres";
//   } else {
//     return null;
//   }
// }

// @override
// Widget build(BuildContext context) => Scaffold(
//   body: ChangeNotifier(

//   ),
// )
// {
//   return Scaffold(

//     appBar: AppBar(
//       backgroundColor: Colors.red,
//       title: Text(
//         'Ejemplo Cuestionario Ibero',
//         style: TextStyle(
//           fontWeight: FontWeight.w600,
//           fontSize: 20,
//         ),
//       ),
//     ),
//     body: Padding(
//       padding: EdgeInsets.only(left: 500.0, right: 500.0),
//       child: Center(
//         child: Form(
//           autovalidateMode: AutovalidateMode.always,
//           key: formkey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 20),
//                 child: Image.asset(
//                   'img/logo_ibero.jpeg',
//                   height: 200,
//                 ),
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   contentPadding: EdgeInsets.all(12),
//                   border: OutlineInputBorder(),
//                   labelText: "Correo Electrónico",
//                   suffixIcon: Icon(
//                     Icons.visibility_off_outlined,
//                     color: Colors.blueGrey[200],
//                   ),
//                 ),
//                 validator: MultiValidator(
//                   [
//                     RequiredValidator(errorText: 'Correo requerido'),
//                     EmailValidator(errorText: 'No es un correo valido'),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 50.0),
//                 child: TextFormField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: 'Contraseña',
//                       suffixIcon: Icon(
//                         Icons.lock,
//                         color: Colors.blueGrey[200],
//                       ),
//                     ),
//                     validator: validatepass),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 40.0),
//               ),
//               SizedBox(
//                 width: 300,
//                 height: 40,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.red,
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => GoQuestions(),
//                       ),
//                     );
//                   },
//                   child: Text(
//                     'Entrar',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
// }

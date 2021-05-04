import 'package:cuestionario_ejemplo/widget/background_painter.dart';
import 'package:cuestionario_ejemplo/widget/google_signup_button_widget.dart';
import 'package:flutter/material.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Image.asset(
              'img/logo_ibero.jpeg',
              height: 200,
            ),
          ),
          buildSignUp(),
        ],
      );

  Widget buildSignUp() => Column(
        children: [
          Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 175,
              child: Text(
                'Bienvenido a las Encuestas de Coordinación',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Spacer(),
          GoogleSignupButtonWidget(),
          SizedBox(height: 12),
          Text(
            'Ingresa para continuar',
            style: TextStyle(fontSize: 16),
          ),
          Spacer(),
        ],
      );
}

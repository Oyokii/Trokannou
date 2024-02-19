import 'package:flutter/material.dart';

class ConnectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Mot de passe',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            // MDP REIN
                          },
                          child: Text('Mot de passe oublié ?'),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // A CONNECTER A LA BDD
                          },
                          child: Text('Se connecter'),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Vous n\'avez pas de compte ?',
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: () {
                            // VERS LA PAGE INSCRIPTION
                          },
                          child: Text('Inscrivez-vous'),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Ou connectez-vous avec :',
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                // VERS GOOGLE
                              },
                              icon: Icon(Icons.search), // VERS ??????
                            ),
                            IconButton(
                              onPressed: () {
                                // VERS APPLE
                              },
                              icon: Icon(Icons.apple),
                            ),
                            IconButton(
                              onPressed: () {
                                //VERS FB
                              },
                              icon: Icon(Icons.facebook),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 0,
            child: CustomPaint(
              size: Size.infinite,
              painter: WavePainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color.fromARGB(255, 243, 244, 246)
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.70, size.width * 0.50, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.80, size.width, size.height * 0.75);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

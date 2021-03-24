import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/kible.dart';

class KibleScreen extends StatefulWidget {
  @override
  _KibleScreenState createState() => _KibleScreenState();
}

class _KibleScreenState extends State<KibleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fon2.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QiblahCompassk(),
            Stack(children: [
              Container(
                child: Image.asset('assets/images/bayram_back.png',
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    colorBlendMode: BlendMode.modulate),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    width: 250,
                    child: Text(
                      'Telefonunuz yere paralel olucak şekilde  ok simgesi yesil oluncaya kadar Kabe resmi yönünde döndürünüz. Simge yeşil olduğunda telefonunuzun üst tarafı Kıble yönünde konumlandırılmış olacak ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'LobsterTwo',
                        color: Color(0xffdcb079),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

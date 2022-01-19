import 'dart:developer';
import 'package:consultorio/paginas/pacientes/pacientes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get_storage/get_storage.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

final box = GetStorage();
Color cor1 = Colors.orange;
Color corTexto1 = Colors.white;
Color cor2 = Colors.orange;
Color corTexto2 = Colors.white;
Color cor3 = Colors.orange;
Color corTexto3 = Colors.white;
int dentistaAtual = 1;

class _MenuState extends State<Menu> {
  @override
  void initState() {
    log('entrou');
    if (box.read('dentistaAtual') == null) {
      box.write('dentistaAtual', 1);
      log('Dentista Atual Vazio');
    } else if (box.read('dentistaAtual') == 1) {
      escolha1();
    } else if (box.read('dentistaAtual') == 2) {
      escolha2();
    } else if (box.read('dentistaAtual') == 3) {
      escolha3();
    } else {
      log('Erro Dentista');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        centerTitle: true,
        backgroundColor: const Color(0xFF48426D),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Text(
              'Dentista',
              style: GoogleFonts.nunito(
                  fontSize: 20, letterSpacing: .1, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(40, 40),
                    primary: cor1,
                    onSurface: Colors.black,
                  ),
                  onPressed: () {
                    escolha1();
                  },
                  child: Text(
                    '1',
                    style: GoogleFonts.montserrat(
                      color: corTexto1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(40, 40),
                    primary: cor2,
                    onSurface: Colors.black,
                  ),
                  onPressed: () {
                    escolha2();
                  },
                  child: Text(
                    '2',
                    style: GoogleFonts.montserrat(
                      color: corTexto2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(40, 40),
                    primary: cor3,
                    onSurface: Colors.black,
                  ),
                  onPressed: () {
                    escolha3();
                  },
                  child: Text(
                    '3',
                    style: GoogleFonts.montserrat(
                      color: corTexto3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            ElevatedButton(
              style: const ButtonStyle(),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Pacientes(),
                  ),
                );
              },
              child: Text(
                'Pacientes',
                style: GoogleFonts.montserratAlternates(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  escolha1() {
    cor1 = Colors.orange;
    corTexto1 = Colors.black;
    cor2 = Colors.green.shade800;
    corTexto2 = Colors.white;
    cor3 = Colors.green.shade800;
    corTexto3 = Colors.white;
    box.write('dentistaAtual', 1);
    log(dentistaAtual.toString());
    setState(() {});
  }

  escolha2() {
    cor1 = Colors.green.shade800;
    corTexto1 = Colors.white;
    cor2 = Colors.orange;
    corTexto2 = Colors.black;
    cor3 = Colors.green.shade800;
    corTexto3 = Colors.white;
    box.write('dentistaAtual', 2);
    log(dentistaAtual.toString());
    setState(() {});
  }

  escolha3() {
    cor1 = Colors.green.shade800;
    corTexto1 = Colors.white;
    cor2 = Colors.green.shade800;
    corTexto2 = Colors.white;
    cor3 = Colors.orange;
    corTexto3 = Colors.black;
    box.write('dentistaAtual', 3);
    log(dentistaAtual.toString());
    setState(() {});
  }
}



/*

            ElevatedButton.icon(
              onPressed: testa ? () {} : null,
              label: const Text('Teste'),
              icon: const Icon(
                Icons.bookmark,
                size: 16,
              ),
              style: ElevatedButton.styleFrom(

                  //               primary: Colors.purple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 6),
                  textStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            */
import 'package:flutter/material.dart';
import 'package:liga_corner_app/pages/Joranada4/resultados4Page.dart';
import 'package:liga_corner_app/pages/joranada2/joranada2.dart';
import 'package:liga_corner_app/pages/jornada3/jornada3.dart';
import 'package:liga_corner_app/widgets/config_Responsive.dart';

class Jornadas extends StatelessWidget {
  const Jornadas({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResultadosPage4()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4ECF84),
                elevation: 20,
                shadowColor: Colors.grey.shade50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              ),
                ),
              child: const Text('Joranada 4'),
              ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ResultadosPage3()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4ECF84),
              elevation: 20, // Elevation
              shadowColor: Colors.grey.shade50,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text('Joranada 3'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResultadosPage2()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4ECF84),
                elevation: 20,
                shadowColor: Colors.grey.shade50,
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              ),
              ),
              child: const Text('Joranada 2'),
              ),
        ]),
      ),
    );
  }
}

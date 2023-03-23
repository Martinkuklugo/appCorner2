// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/providers/partidos_provider.dart';
import 'package:liga_corner_app/dtos/providers/partidos_provider3.dart';
import 'package:liga_corner_app/pages/jornada3/card_resultados3.dart';
import 'package:liga_corner_app/widgets/card_titile.dart';
import 'package:liga_corner_app/widgets/config_Responsive.dart';
import 'package:provider/provider.dart';

class ResultadosPage3 extends StatelessWidget {
  //final PartidosResponseDto? partidos;
  const ResultadosPage3({
    super.key, //required this.partidos
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4ECF84),
      ),
      body: ChangeNotifierProvider(
          create: (context) => PartidosProvider3()..fetchUsers(),
          //operador de cascada
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CardTitleResumen(),
                    Consumer<PartidosProvider3>(
                        builder: (context, PartidosProvider, child) =>
                            PartidosProvider.isLoading
                                ? const Center(
                                    child: CircularProgressIndicator(
                                        color: Color(0xFF4ECF84)),
                                  )
                                : Expanded(
                                    child: ListView.builder(
                                        itemCount:
                                            PartidosProvider.partidos?.length,
                                        itemBuilder: (context, index) {
                                          final plays =
                                              PartidosProvider.partidos?[index];
                                          final idmatch = plays?.id;
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: CardResultados3(
                                                plays: plays,
                                                fem: fem,
                                                ffem: ffem),  
                                          );
                                        })))
                  ]))),
    );
  }
}

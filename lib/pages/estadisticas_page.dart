import 'package:flutter/material.dart';
import 'package:liga_corner_app/utils.dart';
import 'package:liga_corner_app/widgets/card_vs.dart';

class EstadisticasPages extends StatelessWidget {
  const EstadisticasPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8e8e8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4ECF84),
        title: Text(
          'Estadisticas',
          style: SafeGoogleFont('Nunito', color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: const Color(0xFF4ECF84),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                            width: 20,
                            child: Text(
                              '#',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont('Nunito',
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            width: 190,
                            child: Text(
                              'Equipo',
                              style: SafeGoogleFont(
                                'Nunito',
                              ),
                            ),
                          ),
                        )),

                    //     )),
                    Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            width: 30,
                            child: Text(
                              'GD',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Nunito',
                              ),
                            ),
                          ),
                        )),
                    Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            width: 30,
                            child: Text(
                              'G',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Nunito',
                              ),
                            ),
                          ),
                        )),
                    Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            width: 30,
                            child: Text(
                              'PF',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Nunito',
                              ),
                            ),
                          ),
                        )),
                    // Container(
                    //     height: 20, width: 192, color: Colors.blueAccent),
                    // Container(
                    //   height: 20,
                    //   width: 40,
                    //   color: Colors.green,
                    // ),
                    // Container(
                    //   height: 20,
                    //   width: 40,
                    //   color: Colors.pink,
                    // ),
                    // Container(
                    //   height: 20,
                    //   width: 40,
                    //   color: Colors.orange,
                    // ),
                    // Container(
                    //   height: 20,
                    //   width: 40,
                    //   color: Colors.purple,
                    // ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:liga_corner_app/pages/equipos_page.dart';
import 'package:liga_corner_app/pages/resultados_page.dart';
import 'package:liga_corner_app/pages/table_positions.dart';

import '../pages/partidos_page.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  void despose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.50;
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          'images/logo.png',
          height: 50,
          width: 120,
        ),
        backgroundColor: const Color(0xFF4ECF84),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.height,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5), //
                        child: TabBar(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return const Color(0xFF4ECF84); //<-- SEE HERE
                              }
                              return null;
                            },
                          ),
                          indicatorColor: Color(0xffe8e8e8e),
                          unselectedLabelColor: const Color(0xFF595959),
                          labelColor: const Color.fromARGB(255, 255, 255, 255),
                          indicatorWeight: 2,
                          indicator: BoxDecoration(
                            color: const Color(0xFF4ECF84),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          controller: tabController,
                          tabs: const [
                            Tab(
                              text: 'Jornadas',
                            ),
                            Tab(
                              text: 'Equipos',
                            ),
                            Tab(
                              text: 'Tabla de Posiciones',
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  controller: tabController,
                  children: const [
                    PartidosPage(),
                    TeamsPages(),
                    TablaPosicion()
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

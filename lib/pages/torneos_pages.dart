import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/providers/torneo_provider.dart';
import 'package:liga_corner_app/widgets/card_titile.dart';
import 'package:liga_corner_app/widgets/config_Responsive.dart';
import 'package:liga_corner_app/widgets/tab_bar.dart';
import 'package:provider/provider.dart';

class TorneosPages extends StatelessWidget {
  const TorneosPages({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return ChangeNotifierProvider(
      create: (context) => TorneoProvider()..fetchUsers(),
      //operador de cascada
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Image.asset(
            'images/logo.png',
            height: 50,
            width: 120,
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: const Color(0XFFFFFFFF),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CardTitleSelectTornaments(),
          ),
          Consumer<TorneoProvider>(
            builder: (context, TorneoProvider, child) =>
                TorneoProvider.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xFF4ECF84),
                        ),
                      )
                    : Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1, mainAxisExtent: 290),
                            itemCount: TorneoProvider.torneos?.length,
                            itemBuilder: (BuildContext context, int index) {
                              final torneo = TorneoProvider.torneos?[index];
                              return Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: const EdgeInsets.all(10),
                                clipBehavior: Clip.hardEdge,
                                child: InkWell(
                                  splashColor:
                                      const Color.fromARGB(255, 148, 225, 148),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const MyTabBar(),
                                      ),
                                    );
                                  },
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      Image.network(
                                        'https://cdn.pixabay.com/photo/2016/11/29/02/05/audience-1866738_1280.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                      Center(
                                        child: Text(
                                          '${torneo?.sName}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
          ),
        ]),
      ),
    );
  }
}

// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/providers/partidos_provider.dart';
import 'package:liga_corner_app/pages/detalle_partido_page.dart';
import 'package:liga_corner_app/pages/buttom_jorneys.dart';
import 'package:liga_corner_app/utils.dart';
import 'package:liga_corner_app/widgets/card_titile.dart';
import 'package:liga_corner_app/widgets/config_Responsive.dart';
import 'package:provider/provider.dart';

class PartidosPage extends StatelessWidget {
  const PartidosPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return ChangeNotifierProvider(
        create: (context) => PartidosProvider()..fetchUsers(),
        //operador de cascada
        child: Scaffold(
          backgroundColor: const Color(0XFFFFFFFF),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Jornadas(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CardTitlePartidos(),
              ),
              Consumer<PartidosProvider>(
                builder: (context, PartidosProvider, child) =>
                    PartidosProvider.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                                color: Color(0xFF4ECF84)),
                          )
                        : Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: ListView.builder(
                                  itemCount: PartidosProvider.partidos?.length,
                                  itemBuilder: (context, index) {
                                    final plays =
                                        PartidosProvider.partidos?[index];
                                    return Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Card(
                                        elevation: 12,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 8.0),
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        15.0),
                                                            child: SizedBox(
                                                                width: SizeConfig
                                                                    .blockSizeHorizontal(
                                                                        15),
                                                                height: SizeConfig
                                                                    .blockSizeVertical(
                                                                        5),
                                                                child:
                                                                    FittedBox(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  child: plays?.team1
                                                                              .tEmblem ==
                                                                          null
                                                                      ? Image.asset(
                                                                          'images/default_image_team.jpg')
                                                                      : Image
                                                                          .network(
                                                                          'https://ligasabatinadefutbol.com.mx/media/bearleague/${plays?.team1.tEmblem}',
                                                                          errorBuilder: (BuildContext context,
                                                                              Object exception,
                                                                              StackTrace? stackTrace) {
                                                                            return Image.asset('images/default_image_team.jpg');
                                                                          },
                                                                        ),
                                                                )),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 40.0),
                                                      child: SizedBox(
                                                        width: 40,
                                                        height: 50,
                                                        child: Center(
                                                          child: Text(
                                                            'VS',
                                                            style: SafeGoogleFont(
                                                                'Nunito',
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15.0),
                                                          child: SizedBox(
                                                              width: SizeConfig
                                                                  .blockSizeHorizontal(
                                                                      15),
                                                              height: SizeConfig
                                                                  .blockSizeVertical(
                                                                      5),
                                                              child: FittedBox(
                                                                fit: BoxFit
                                                                    .cover,
                                                                child: plays?.team1
                                                                            .tEmblem ==
                                                                        null
                                                                    ? Image.asset(
                                                                        'images/default_image_team.jpg')
                                                                    : Image
                                                                        .network(
                                                                        'https://ligasabatinadefutbol.com.mx/media/bearleague/${plays?.team2.tEmblem}',
                                                                        errorBuilder: (BuildContext context,
                                                                            Object
                                                                                exception,
                                                                            StackTrace?
                                                                                stackTrace) {
                                                                          return Image.asset(
                                                                              'images/default_image_team.jpg');
                                                                        },
                                                                      ),
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 8.0),
                                                      child: SizedBox(
                                                        width: SizeConfig
                                                            .blockSizeHorizontal(
                                                                40),
                                                        height: 30,
                                                        child: Center(
                                                          child: Text(
                                                            '${plays?.team1.tName}',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                SafeGoogleFont(
                                                              'Nunito',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 8.0),
                                                      child: SizedBox(
                                                        width: SizeConfig
                                                            .blockSizeHorizontal(
                                                                40),
                                                        height: 50,
                                                        child: Center(
                                                          child: Text(
                                                            '${plays?.team2.tName}',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                SafeGoogleFont(
                                                              'Nunito',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 41 * fem,
                                              decoration: const BoxDecoration(
                                                // color: Color(0xFF4ECF84),
                                                borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                ),
                                              ),
                                              child: Center(
                                                child: TextButton(
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return AlertDialog(
                                                          title: const Text(
                                                              'Detalles'),
                                                          content:
                                                              SingleChildScrollView(
                                                            child: ListBody(
                                                              children: <
                                                                  Widget>[
                                                                Column(
                                                                  children: [
                                                                    SizedBox(
                                                                      width: SizeConfig
                                                                          .screenWidth,
                                                                      child:
                                                                          Text(
                                                                        '${plays?.team1.tName}  vs  ${plays?.team2.tName}',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: SafeGoogleFont(
                                                                            'Nunito',
                                                                            fontWeight: FontWeight
                                                                                .bold,
                                                                            fontSize:
                                                                                15,
                                                                            color:
                                                                                const Color(0xff595959)),
                                                                      ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        SizedBox(
                                                                          width:
                                                                              80,
                                                                          height:
                                                                              80,
                                                                          child: plays?.team2.tEmblem == null
                                                                              ? Image.asset('images/logoLigaTorneo.jpg')
                                                                              : Image.network(
                                                                                  'https://ligasabatinadefutbol.com.mx/media/bearleague/${plays?.team1.tEmblem}',
                                                                                  errorBuilder: (context, error, stackTrace) {
                                                                                    return Image.asset('images/logoLigaTorneo.jpg');
                                                                                  },
                                                                                ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              SizeConfig.blockSizeHorizontal(2),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              20,
                                                                          height:
                                                                              20,
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text(
                                                                              '${plays?.score1}',
                                                                              style: SafeGoogleFont('Nunito', fontWeight: FontWeight.bold, fontSize: 15),
                                                                              textAlign: TextAlign.center,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              SizeConfig.blockSizeHorizontal(2),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(horizontal: 4.0),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                20,
                                                                            height:
                                                                                20,
                                                                            child:
                                                                                Center(
                                                                              child: Text(
                                                                                ':',
                                                                                textAlign: TextAlign.center,
                                                                                style: SafeGoogleFont('Nunito', fontWeight: FontWeight.bold, fontSize: 15),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              SizeConfig.blockSizeHorizontal(2),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              20,
                                                                          height:
                                                                              20,
                                                                          child:
                                                                              Center(
                                                                            child: Text('${plays?.score2}',
                                                                                style: SafeGoogleFont('Nunito', fontWeight: FontWeight.bold, fontSize: 15),
                                                                                textAlign: TextAlign.center),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              80,
                                                                          height:
                                                                              80,
                                                                          child: plays?.team2.tEmblem == null
                                                                              ? Image.asset('images/logoLigaTorneo.jpg')
                                                                              : Image.network(
                                                                                  'https://ligasabatinadefutbol.com.mx/media/bearleague/${plays?.team2.tEmblem}',
                                                                                  errorBuilder: (context, error, stackTrace) {
                                                                                    return Image.asset('images/logoLigaTorneo.jpg');
                                                                                  },
                                                                                ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Text(
                                                                          'Lugar: ',
                                                                          style: SafeGoogleFont(
                                                                              'Nunito',
                                                                              fontSize: 16,
                                                                              fontWeight: FontWeight.bold),
                                                                        ),
                                                                        Text(
                                                                          '${plays?.mLocation} ',
                                                                          style: SafeGoogleFont(
                                                                              'Nunito',
                                                                              color: const Color(0XFf595959)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Text(
                                                                          'Hora: ',
                                                                          style: SafeGoogleFont(
                                                                              'Nunito',
                                                                              fontSize: 16,
                                                                              fontWeight: FontWeight.bold),
                                                                        ),
                                                                        Text(
                                                                          '${plays?.mTime} ',
                                                                          style: SafeGoogleFont(
                                                                              'Nunito',
                                                                              color: const Color(0XFf595959)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Text(
                                                                          'Fecha: ',
                                                                          style: SafeGoogleFont(
                                                                              'Nunito',
                                                                              fontSize: 16,
                                                                              fontWeight: FontWeight.bold),
                                                                        ),
                                                                        Text(
                                                                          '${plays?.mDate} ',
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          style: SafeGoogleFont(
                                                                              'Nunito',
                                                                              color: const Color(0XFf595959)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          actions: <Widget>[
                                                            TextButton(
                                                              child: const Text(
                                                                  'Cerrar'),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: Text('Detalles'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
              ),
            ],
          ),
        ));
  }
}

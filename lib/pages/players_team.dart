import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/providers/equipos_provider.dart';
import 'package:liga_corner_app/dtos/responses/requests/equipos_response.dart';
import 'package:liga_corner_app/utils.dart';
import 'package:provider/provider.dart';

class PlayersTeamPage extends StatelessWidget {
  final EquiposResponseDto? equipo;
  const PlayersTeamPage({super.key, required this.equipo});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return ChangeNotifierProvider(
      create: (context) => EquiposProvider()..fetchUsers(),
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFF4ECF84),
          elevation: 0,
          title: Text(
            'Jugadores',
            style: SafeGoogleFont('Nunito', color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<EquiposProvider>(
                builder: (context, equiposProvider, child) => equiposProvider
                        .isLoading
                    ? const Center(
                        child:
                            CircularProgressIndicator(color: Color(0xFF4ECF84)),
                      )
                    : Expanded(
                        child: ListView.builder(
                          itemCount: equipo?.players.length,
                          itemBuilder: (context, index) {
                            final player = equipo?.players[index];
                            return Column(
                              children: [
                                ListTile(
                                  // trailing: Text('${player?.team.tName}'),
                                  leading: const Icon(Icons.person_2_rounded),
                                  title: Text(
                                      '${player?.firstName} ${player?.lastName}'),
                                ),
                              ],
                            );
                          },
                        ),
                      ))
          ],
        ),
      ),
    );
  }
}

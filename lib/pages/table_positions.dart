import 'package:flutter/material.dart';
import 'package:liga_corner_app/widgets/config_Responsive.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TablePositionsPage extends StatelessWidget {
  const TablePositionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('tabla de posicion'),
        backgroundColor: const Color(0xFF4ECF84),
      ),
      body: Column(children: const [
        YoutubeVideoPlayer(),
        Expanded(child: TablaPosicion())
      ]),
    );
  }
}

class TablaPosicion extends StatelessWidget {
  const TablaPosicion({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return SingleChildScrollView(
      child: Container(
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
            BoxShadow(
              color: Colors.grey.shade300,
              offset: const Offset(-5, 0),
            ),
            BoxShadow(
              color: Colors.grey.shade300,
              offset: const Offset(5, 0),
            )
          ],
        ),
        child: Card(
          elevation: 12,
          color: Colors.white,
          child: DataTable(
            headingRowColor: MaterialStateColor.resolveWith(
                (states) => const Color(0xFF4ECF84)),
            columnSpacing: 10,
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Equipo',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'PJ',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'PG',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'PP',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'PE',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'G',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                  label: Text('PTS',
                      style: TextStyle(fontStyle: FontStyle.italic)))
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Guerrerros')),
                  DataCell(Text('17')),
                  DataCell(Text('14')),
                  DataCell(Text('2')),
                  DataCell(Text('2')),
                  DataCell(Text('89')),
                  DataCell(Text('43')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Deportivo Becal')),
                  DataCell(Text('17')),
                  DataCell(Text('14')),
                  DataCell(Text('2')),
                  DataCell(Text('2')),
                  DataCell(Text('60')),
                  DataCell(Text('43')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Deportivo Malix')),
                  DataCell(Text('17')),
                  DataCell(Text('12')),
                  DataCell(Text('2')),
                  DataCell(Text('3')),
                  DataCell(Text('54')),
                  DataCell(Text('39')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Deportivo Real Punki')),
                  DataCell(Text('17')),
                  DataCell(Text('12')),
                  DataCell(Text('2')),
                  DataCell(Text('3')),
                  DataCell(Text('57')),
                  DataCell(Text('37')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Deportivo La Fatima')),
                  DataCell(Text('17')),
                  DataCell(Text('12')),
                  DataCell(Text('4')),
                  DataCell(Text('3')),
                  DataCell(Text('50')),
                  DataCell(Text('37')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Cebollita')),
                  DataCell(Text('17')),
                  DataCell(Text('10')),
                  DataCell(Text('5')),
                  DataCell(Text('2')),
                  DataCell(Text('56')),
                  DataCell(Text('33')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('F.C. Panteras')),
                  DataCell(Text('17')),
                  DataCell(Text('10')),
                  DataCell(Text('2')),
                  DataCell(Text('5')),
                  DataCell(Text('50')),
                  DataCell(Text('32')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Reales')),
                  DataCell(Text('17')),
                  DataCell(Text('9')),
                  DataCell(Text('5')),
                  DataCell(Text('3')),
                  DataCell(Text('56')),
                  DataCell(Text('32')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Deportivo San Roman')),
                  DataCell(Text('17')),
                  DataCell(Text('9')),
                  DataCell(Text('5')),
                  DataCell(Text('2')),
                  DataCell(Text('74')),
                  DataCell(Text('30')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Titanes F.C')),
                  DataCell(Text('16')),
                  DataCell(Text('7')),
                  DataCell(Text('8')),
                  DataCell(Text('1')),
                  DataCell(Text('39')),
                  DataCell(Text('22')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('PucPets ')),
                  DataCell(Text('15')),
                  DataCell(Text('7')),
                  DataCell(Text('6')),
                  DataCell(Text('3')),
                  DataCell(Text('37')),
                  DataCell(Text('21')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('ROJIBLANCO')),
                  DataCell(Text('16')),
                  DataCell(Text('4')),
                  DataCell(Text('9')),
                  DataCell(Text('3')),
                  DataCell(Text('34')),
                  DataCell(Text('15')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Leones Negros')),
                  DataCell(Text('16')),
                  DataCell(Text('3')),
                  DataCell(Text('12')),
                  DataCell(Text('1')),
                  DataCell(Text('22')),
                  DataCell(Text('10')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('La Raza')),
                  DataCell(Text('16')),
                  DataCell(Text('2')),
                  DataCell(Text('11')),
                  DataCell(Text('3')),
                  DataCell(Text('38')),
                  DataCell(Text('9')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Deportivo Roma')),
                  DataCell(Text('15')),
                  DataCell(Text('2')),
                  DataCell(Text('11')),
                  DataCell(Text('2')),
                  DataCell(Text('19')),
                  DataCell(Text('8')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Xculpak F.C')),
                  DataCell(Text('15')),
                  DataCell(Text('2')),
                  DataCell(Text('0')),
                  DataCell(Text('13')),
                  DataCell(Text('19')),
                  DataCell(Text('6')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Deportivo Arco Maya')),
                  DataCell(Text('15')),
                  DataCell(Text('1')),
                  DataCell(Text('13')),
                  DataCell(Text('1')),
                  DataCell(Text('13')),
                  DataCell(Text('4')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Fahuco')),
                  DataCell(Text('17')),
                  DataCell(Text('1')),
                  DataCell(Text('15')),
                  DataCell(Text('1')),
                  DataCell(Text('10')),
                  DataCell(Text('4')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class YoutubeVideoPlayer extends StatefulWidget {
  const YoutubeVideoPlayer({super.key});

  @override
  State<YoutubeVideoPlayer> createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  final videoURL = "https://www.youtube.com/watch?v=YMx8Bbev6T4";

  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () => debugPrint('Listo'),
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                isExpanded: true,
                colors: const ProgressBarColors(
                    playedColor: Color(0xFF4ECF84),
                    handleColor: Color(0xFF4ECF84)),
              ),
              const PlaybackSpeedButton(),
            ],
          ),
        ],
      ),
    );
  }
}

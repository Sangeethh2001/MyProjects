/*import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/project/src/blocs/global.dart';
import 'package:flutter_application_1/project/src/common/emptyscreen.dart';
import 'package:flutter_application_1/project/src/models/playerstate.dart';
import 'package:flutter_application_1/project/src/ui/Allsongs/Allsongtile.dart';
import 'package:provider/provider.dart';

class AllSongsScreen extends StatelessWidget {
  AllSongsScreen({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalBloc globalBloc = Provider.of<GlobalBloc>(context);
    return Scaffold(
      body: StreamBuilder<List<Song>>(
        stream: globalBloc.musicPlayerBloc.songs$,
        builder: (BuildContext context, AsyncSnapshot<List<Song>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final List<Song>? songs = snapshot.data;
          if (songs!.length == 0) {
            return EmptyScreen(
              text: "You do not have any songs on your device.",
            );
          }
          return ListView.builder(
            key: PageStorageKey<String>("All Songs"),
            padding: const EdgeInsets.only(bottom: 150.0),
            physics: BouncingScrollPhysics(),
            itemCount: songs.length,
            itemExtent: 110,
            itemBuilder: (BuildContext context, int index) {
              return StreamBuilder<MapEntry<PlayerState, Song>>(
                stream: globalBloc.musicPlayerBloc.playerState$,
                builder: (BuildContext context,
                    AsyncSnapshot<MapEntry<PlayerState, Song>> snapshot) {
                  if (!snapshot.hasData) {
                    return Container();
                  }
                  final PlayerState state = snapshot.data!.key;
                  final Song currentSong = snapshot.data!.value;
                  final bool isSelectedSong = currentSong == songs[index];
                  return GestureDetector(
                    onTap: () {
                      globalBloc.musicPlayerBloc.updatePlaylist(songs);
                      switch (state) {
                        case PlayerState.playing:
                          if (isSelectedSong) {
                            globalBloc.musicPlayerBloc.pauseMusic(currentSong);
                          } else {
                            globalBloc.musicPlayerBloc.stopMusic();
                            globalBloc.musicPlayerBloc.playMusic(
                              songs[index],
                            );
                          }
                          break;
                        case PlayerState.paused:
                          if (isSelectedSong) {
                            globalBloc.musicPlayerBloc.playMusic(songs[index]);
                          } else {
                            globalBloc.musicPlayerBloc.stopMusic();
                            globalBloc.musicPlayerBloc.playMusic(
                              songs[index],
                            );
                          }
                          break;
                        case PlayerState.stopped:
                          globalBloc.musicPlayerBloc.playMusic(songs[index]);
                          break;
                        default:
                          break;
                      }
                    },
                    child: SongTile(
                      song: songs[index],
                      key: null,
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}*/

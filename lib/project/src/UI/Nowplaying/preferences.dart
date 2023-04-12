import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/project/src/blocs/global.dart';
import 'package:flutter_application_1/project/src/models/playback.dart';
import 'package:flutter_application_1/project/src/models/playerstate.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

class preferences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalBloc globalBloc = Provider.of<GlobalBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        StreamBuilder<MapEntry<MapEntry<PlayerState, Song>, List<Song>>>(
          stream: Observable.combineLatest2(
            globalBloc.musicPlayerBloc.playerState$,
            globalBloc.musicPlayerBloc.favorites$,
            (a, b) => MapEntry(a, b),
          ),
          builder: (BuildContext context,
              AsyncSnapshot<MapEntry<MapEntry<PlayerState, Song>, List<Song>>>
                  snapshot) {
            if (!snapshot.hasData) {
              return Icon(
                Icons.favorite,
                size: 35,
                color: Color(0xFFC7D2E3),
              );
            }
            final PlayerState state = snapshot.data.key.key;
            if (state == PlayerState.stopped) {
              return Icon(
                Icons.favorite,
                size: 35,
                color: Color(0xFFC7D2E3),
              );
            }
            final Song currentSong = snapshot.data!.key.value;
            final List<Song> favorites = snapshot.data!.value;
            final bool isFavorited = favorites.contains(currentSong);
            return IconButton(
              onPressed: () {
                if (isFavorited) {
                  globalBloc.musicPlayerBloc.removeFromFavorites(currentSong);
                } else {
                  globalBloc.musicPlayerBloc.addToFavorites(currentSong);
                }
              },
              icon: Icon(
                Icons.favorite,
                size: 35,
                color: !isFavorited ? Color(0xFFC7D2E3) : Color(0xFF7B92CA),
              ),
            );
          },
        ),
        StreamBuilder<List<Playback>>(
          stream: globalBloc.musicPlayerBloc.playback$,
          builder:
              (BuildContext context, AsyncSnapshot<List<Playback>> snapshot) {
            if (!snapshot.hasData) {
              return Icon(
                Icons.loop,
                size: 35,
                color: Color(0xFFC7D2E3),
              );
            }
            final List<Playback>? playbackList = snapshot.data;
            final bool isSelected = playbackList!.contains(Playback.repeatSong);
            return IconButton(
              onPressed: () {
                if (!isSelected) {
                  globalBloc.musicPlayerBloc
                      .updatePlayback(Playback.repeatSong);
                } else {
                  globalBloc.musicPlayerBloc
                      .removePlayback(Playback.repeatSong);
                }
              },
              icon: Icon(
                Icons.loop,
                size: 35,
                color: !isSelected ? Color(0xFFC7D2E3) : Color(0xFF7B92CA),
              ),
            );
          },
        ),
        StreamBuilder<List<Playback>>(
          stream: globalBloc.musicPlayerBloc.playback$,
          builder:
              (BuildContext context, AsyncSnapshot<List<Playback>> snapshot) {
            if (!snapshot.hasData) {
              return Icon(
                Icons.loop,
                size: 35,
                color: Color(0xFFC7D2E3),
              );
            }
            final List<Playback>? playbackList = snapshot.data;
            final bool isSelected = playbackList!.contains(Playback.shuffle);
            return IconButton(
              onPressed: () {
                if (!isSelected) {
                  globalBloc.musicPlayerBloc.updatePlayback(Playback.shuffle);
                } else {
                  globalBloc.musicPlayerBloc.removePlayback(Playback.shuffle);
                }
              },
              icon: Icon(
                Icons.shuffle,
                size: 35,
                color: !isSelected ? Color(0xFFC7D2E3) : Color(0xFF7B92CA),
              ),
            );
          },
        ),
      ],
    );
  }
}

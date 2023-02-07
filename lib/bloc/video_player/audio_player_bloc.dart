import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:video_players/data/models/video_player/video_player_model.dart';

part 'audio_player_event.dart';

part 'audio_player_state.dart';

class AudioPlayerBloc extends Bloc<AudioPlayerEvent, AudioPlayerState> {
  AudioPlayerBloc()
      : super(
          AudioPlayerState(
            status: MusicStatus.STOPPED,
            currentMusic: 0,
            currentSecond: const Duration(seconds: 0),
            maxDuration: const Duration(seconds: 0),
            videos: [
              VideoPlayerModel(
                name: "Mozart",
                path: "video/mozart.mp3",
              ),
            ],
          ),
        ) {
    // on<PlayCurrentMusicEvent>(playMusic);
    // on<PauseCurrentMusicEvent>(pauseMusic);
    // on<ResumeCurrentMusicEvent>(resumeMusic);
    // on<ChangeCurrentSecondEvent>(seekMusic);
    // on<SkipMusicEvent>(skipMusic);
    // on<IndicatorEvent>(indicator);
    // on<InitMusicEvent>(initMusic);
  }

  //
  // initMusic(InitMusicEvent event, emit) async {
  //   await player.setSource(AssetSource(state.videos[event.index].path));
  //   Duration? maxDuration = await player.getDuration();
  //   emit(state.copyWith(
  //       currentMusic: event.index,
  //       maxDuration: maxDuration,
  //       currentSecond: const Duration(seconds: 0),
  //       videos: state.videos));
  // }
  //
  // playMusic(PlayCurrentMusicEvent event, emit) async {
  //   await player.play(AssetSource(state.videos[event.index].path),
  //       position: state.currentSecond);
  //   player.onPositionChanged.listen((event) {
  //     add(IndicatorEvent(currentSecond: event.inSeconds));
  //   });
  //   add(InitMusicEvent(index: event.index));
  //   emit(state.copyWith(
  //       status: MusicStatus.PLAYING,
  //       videos: state.videos..[event.index].isPlaying = true,
  //       currentMusic: event.index));
  // }
  //
  // indicator(IndicatorEvent event, emit) {
  //   emit(state.copyWith(
  //       status: MusicStatus.PLAYING,
  //       currentSecond: Duration(seconds: event.currentSecond)));
  // }
  //
  // pauseMusic(PauseCurrentMusicEvent event, emit) async {
  //   await player.pause();
  //   emit(state.copyWith(
  //       status: MusicStatus.PAUSED,
  //       videos: state.videos
  //         ..[event.index].isPlaying = false
  //         ..[event.index].isPaused = true));
  // }
  //
  // resumeMusic(ResumeCurrentMusicEvent event, emit) async {
  //   await player.resume();
  //   player.onPositionChanged.listen((event) {
  //     add(IndicatorEvent(currentSecond: event.inSeconds));
  //   });
  //   emit(state.copyWith(
  //       status: MusicStatus.PAUSED,
  //       videos: state.videos
  //         ..[event.index].isPlaying = true
  //         ..[event.index].isPaused = false));
  // }
  //
  // seekMusic(ChangeCurrentSecondEvent event, emit) async {
  //   await player.seek(Duration(seconds: event.second));
  //   emit(state.copyWith(currentSecond: Duration(seconds: event.second)));
  // }
  //
  // skipMusic(SkipMusicEvent event, emit) async {
  //   await player.stop();
  //   add(PlayCurrentMusicEvent(index: event.index));
  // }
}

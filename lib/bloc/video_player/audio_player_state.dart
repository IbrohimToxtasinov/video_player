part of 'audio_player_bloc.dart';

class AudioPlayerState extends Equatable {
  MusicStatus? status;
  Duration? currentSecond;
  Duration? maxDuration;
  int? currentMusic;
  List<VideoPlayerModel> videos = [
    VideoPlayerModel(
      name: "Любовь как спецэффект",
      path: "mp3/mozart.mp3",
    ),
    VideoPlayerModel(
      name: "KenanXan - Aglatan Kafe",
      path: "mp3/KenanXan.mp3",
    )
  ];

  AudioPlayerState({
    this.status,
    this.currentSecond,
    this.maxDuration,
    this.currentMusic,
    required this.videos,
  });

  copyWith(
      {Duration? maxDuration,
      Duration? currentSecond,
      MusicStatus? status,
      int? currentMusic,
      List<VideoPlayerModel>? videos}) {
    return AudioPlayerState(
        videos: videos ?? this.videos,
        currentSecond: currentSecond ?? this.currentSecond,
        status: status ?? this.status,
        maxDuration: maxDuration ?? this.maxDuration,
        currentMusic: currentMusic ?? this.currentMusic);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [status, currentSecond, videos, maxDuration];
}

enum MusicStatus {
  STOPPED,
  PLAYING,
  PAUSED,
}

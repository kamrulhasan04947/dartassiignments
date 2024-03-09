class Media {
  void play() {
    print('Playing media...');
  }
}

class Song extends Media {
  String artist;
  Song({required this.artist});
  //override play() methode of supper class
  @override
  void play() {
    print('Playing Song by $artist');
  }
}

void main() {
  //instantiating Media and Song class
  Media media = Media();
  Song song = Song(artist: 'Arjit Sing');
  //calling play method from Media and Song class instance
  media.play();
  song.play();
}

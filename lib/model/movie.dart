class MovieModel {
  final int id;
  final String title;
  final String overview;
  final String poster;
  final String releaseDate;
  final double voteAverage;
  final int voteCount;

  MovieModel({
    this.id,
    this.overview,
    this.poster,
    this.releaseDate,
    this.title,
    this.voteAverage,
    this.voteCount,
  });

  MovieModel.fromJson(Map<String, dynamic> map)
      : id = map['id'],
        title = map['original_title'],
        overview = map['overview'],
        poster = map['poster_path'],
        releaseDate = map['release_date'],
        voteAverage = map['vote_average'],
        voteCount = map['vote_count'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'original_title': title,
        'overview': overview,
        'poster_path': poster,
        'release_date': releaseDate,
        'vote_average': voteAverage,
        'vote_count': voteCount,
      };
}

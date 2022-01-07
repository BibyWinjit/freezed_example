import 'dart:convert';
AnimModel animModelFromJson(String str) => AnimModel.fromJson(json.decode(str));
String animModelToJson(AnimModel data) => json.encode(data.toJson());
class AnimModel {
  AnimModel({
      String? id, 
      String? type, 
      Links? links, 
      Attributes? attributes, 
      Relationships? relationships,}){
    _id = id;
    _type = type;
    _links = links;
    _attributes = attributes;
    _relationships = relationships;
}

  AnimModel.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
    _attributes = json['attributes'] != null ? Attributes.fromJson(json['attributes']) : null;
    _relationships = json['relationships'] != null ? Relationships.fromJson(json['relationships']) : null;
  }
  String? _id;
  String? _type;
  Links? _links;
  Attributes? _attributes;
  Relationships? _relationships;

  String? get id => _id;
  String? get type => _type;
  Links? get links => _links;
  Attributes? get attributes => _attributes;
  Relationships? get relationships => _relationships;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    if (_attributes != null) {
      map['attributes'] = _attributes?.toJson();
    }
    if (_relationships != null) {
      map['relationships'] = _relationships?.toJson();
    }
    return map;
  }

}

Relationships relationshipsFromJson(String str) => Relationships.fromJson(json.decode(str));
String relationshipsToJson(Relationships data) => json.encode(data.toJson());
class Relationships {
  Relationships({
      Genres? genres, 
      Categories? categories, 
      Castings? castings, 
      Installments? installments, 
      Mappings? mappings, 
      Reviews? reviews, 
      MediaRelationships? mediaRelationships, 
      Characters? characters, 
      Staff? staff, 
      Productions? productions, 
      Quotes? quotes, 
      Episodes? episodes, 
      StreamingLinks? streamingLinks, 
      AnimeProductions? animeProductions, 
      AnimeCharacters? animeCharacters, 
      AnimeStaff? animeStaff,}){
    _genres = genres;
    _categories = categories;
    _castings = castings;
    _installments = installments;
    _mappings = mappings;
    _reviews = reviews;
    _mediaRelationships = mediaRelationships;
    _characters = characters;
    _staff = staff;
    _productions = productions;
    _quotes = quotes;
    _episodes = episodes;
    _streamingLinks = streamingLinks;
    _animeProductions = animeProductions;
    _animeCharacters = animeCharacters;
    _animeStaff = animeStaff;
}

  Relationships.fromJson(dynamic json) {
    _genres = json['genres'] != null ? Genres.fromJson(json['genres']) : null;
    _categories = json['categories'] != null ? Categories.fromJson(json['categories']) : null;
    _castings = json['castings'] != null ? Castings.fromJson(json['castings']) : null;
    _installments = json['installments'] != null ? Installments.fromJson(json['installments']) : null;
    _mappings = json['mappings'] != null ? Mappings.fromJson(json['mappings']) : null;
    _reviews = json['reviews'] != null ? Reviews.fromJson(json['reviews']) : null;
    _mediaRelationships = json['mediaRelationships'] != null ? MediaRelationships.fromJson(json['mediaRelationships']) : null;
    _characters = json['characters'] != null ? Characters.fromJson(json['characters']) : null;
    _staff = json['staff'] != null ? Staff.fromJson(json['staff']) : null;
    _productions = json['productions'] != null ? Productions.fromJson(json['productions']) : null;
    _quotes = json['quotes'] != null ? Quotes.fromJson(json['quotes']) : null;
    _episodes = json['episodes'] != null ? Episodes.fromJson(json['episodes']) : null;
    _streamingLinks = json['streamingLinks'] != null ? StreamingLinks.fromJson(json['streamingLinks']) : null;
    _animeProductions = json['animeProductions'] != null ? AnimeProductions.fromJson(json['animeProductions']) : null;
    _animeCharacters = json['animeCharacters'] != null ? AnimeCharacters.fromJson(json['animeCharacters']) : null;
    _animeStaff = json['animeStaff'] != null ? AnimeStaff.fromJson(json['animeStaff']) : null;
  }
  Genres? _genres;
  Categories? _categories;
  Castings? _castings;
  Installments? _installments;
  Mappings? _mappings;
  Reviews? _reviews;
  MediaRelationships? _mediaRelationships;
  Characters? _characters;
  Staff? _staff;
  Productions? _productions;
  Quotes? _quotes;
  Episodes? _episodes;
  StreamingLinks? _streamingLinks;
  AnimeProductions? _animeProductions;
  AnimeCharacters? _animeCharacters;
  AnimeStaff? _animeStaff;

  Genres? get genres => _genres;
  Categories? get categories => _categories;
  Castings? get castings => _castings;
  Installments? get installments => _installments;
  Mappings? get mappings => _mappings;
  Reviews? get reviews => _reviews;
  MediaRelationships? get mediaRelationships => _mediaRelationships;
  Characters? get characters => _characters;
  Staff? get staff => _staff;
  Productions? get productions => _productions;
  Quotes? get quotes => _quotes;
  Episodes? get episodes => _episodes;
  StreamingLinks? get streamingLinks => _streamingLinks;
  AnimeProductions? get animeProductions => _animeProductions;
  AnimeCharacters? get animeCharacters => _animeCharacters;
  AnimeStaff? get animeStaff => _animeStaff;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_genres != null) {
      map['genres'] = _genres?.toJson();
    }
    if (_categories != null) {
      map['categories'] = _categories?.toJson();
    }
    if (_castings != null) {
      map['castings'] = _castings?.toJson();
    }
    if (_installments != null) {
      map['installments'] = _installments?.toJson();
    }
    if (_mappings != null) {
      map['mappings'] = _mappings?.toJson();
    }
    if (_reviews != null) {
      map['reviews'] = _reviews?.toJson();
    }
    if (_mediaRelationships != null) {
      map['mediaRelationships'] = _mediaRelationships?.toJson();
    }
    if (_characters != null) {
      map['characters'] = _characters?.toJson();
    }
    if (_staff != null) {
      map['staff'] = _staff?.toJson();
    }
    if (_productions != null) {
      map['productions'] = _productions?.toJson();
    }
    if (_quotes != null) {
      map['quotes'] = _quotes?.toJson();
    }
    if (_episodes != null) {
      map['episodes'] = _episodes?.toJson();
    }
    if (_streamingLinks != null) {
      map['streamingLinks'] = _streamingLinks?.toJson();
    }
    if (_animeProductions != null) {
      map['animeProductions'] = _animeProductions?.toJson();
    }
    if (_animeCharacters != null) {
      map['animeCharacters'] = _animeCharacters?.toJson();
    }
    if (_animeStaff != null) {
      map['animeStaff'] = _animeStaff?.toJson();
    }
    return map;
  }

}

AnimeStaff animeStaffFromJson(String str) => AnimeStaff.fromJson(json.decode(str));
String animeStaffToJson(AnimeStaff data) => json.encode(data.toJson());
class AnimeStaff {
  AnimeStaff({
      Links? links,}){
    _links = links;
}

  AnimeStaff.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}

Links linksFromJson(String str) => Links.fromJson(json.decode(str));
String linksToJson(Links data) => json.encode(data.toJson());
class Links {
  Links({
      String? self, 
      String? related,}){
    _self = self;
    _related = related;
}

  Links.fromJson(dynamic json) {
    _self = json['self'];
    _related = json['related'];
  }
  String? _self;
  String? _related;

  String? get self => _self;
  String? get related => _related;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['self'] = _self;
    map['related'] = _related;
    return map;
  }

}

AnimeCharacters animeCharactersFromJson(String str) => AnimeCharacters.fromJson(json.decode(str));
String animeCharactersToJson(AnimeCharacters data) => json.encode(data.toJson());
class AnimeCharacters {
  AnimeCharacters({
      Links? links,}){
    _links = links;
}

  AnimeCharacters.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}



AnimeProductions animeProductionsFromJson(String str) => AnimeProductions.fromJson(json.decode(str));
String animeProductionsToJson(AnimeProductions data) => json.encode(data.toJson());
class AnimeProductions {
  AnimeProductions({
      Links? links,}){
    _links = links;
}

  AnimeProductions.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}


StreamingLinks streamingLinksFromJson(String str) => StreamingLinks.fromJson(json.decode(str));
String streamingLinksToJson(StreamingLinks data) => json.encode(data.toJson());
class StreamingLinks {
  StreamingLinks({
      Links? links,}){
    _links = links;
}

  StreamingLinks.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}

Episodes episodesFromJson(String str) => Episodes.fromJson(json.decode(str));
String episodesToJson(Episodes data) => json.encode(data.toJson());
class Episodes {
  Episodes({
      Links? links,}){
    _links = links;
}

  Episodes.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}


Quotes quotesFromJson(String str) => Quotes.fromJson(json.decode(str));
String quotesToJson(Quotes data) => json.encode(data.toJson());
class Quotes {
  Quotes({
      Links? links,}){
    _links = links;
}

  Quotes.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}



Productions productionsFromJson(String str) => Productions.fromJson(json.decode(str));
String productionsToJson(Productions data) => json.encode(data.toJson());
class Productions {
  Productions({
      Links? links,}){
    _links = links;
}

  Productions.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}



Staff staffFromJson(String str) => Staff.fromJson(json.decode(str));
String staffToJson(Staff data) => json.encode(data.toJson());
class Staff {
  Staff({
      Links? links,}){
    _links = links;
}

  Staff.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}



Characters charactersFromJson(String str) => Characters.fromJson(json.decode(str));
String charactersToJson(Characters data) => json.encode(data.toJson());
class Characters {
  Characters({
      Links? links,}){
    _links = links;
}

  Characters.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}


MediaRelationships mediaRelationshipsFromJson(String str) => MediaRelationships.fromJson(json.decode(str));
String mediaRelationshipsToJson(MediaRelationships data) => json.encode(data.toJson());
class MediaRelationships {
  MediaRelationships({
      Links? links,}){
    _links = links;
}

  MediaRelationships.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}

Reviews reviewsFromJson(String str) => Reviews.fromJson(json.decode(str));
String reviewsToJson(Reviews data) => json.encode(data.toJson());
class Reviews {
  Reviews({
      Links? links,}){
    _links = links;
}

  Reviews.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}

Mappings mappingsFromJson(String str) => Mappings.fromJson(json.decode(str));
String mappingsToJson(Mappings data) => json.encode(data.toJson());
class Mappings {
  Mappings({
      Links? links,}){
    _links = links;
}

  Mappings.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}


Installments installmentsFromJson(String str) => Installments.fromJson(json.decode(str));
String installmentsToJson(Installments data) => json.encode(data.toJson());
class Installments {
  Installments({
      Links? links,}){
    _links = links;
}

  Installments.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}



Castings castingsFromJson(String str) => Castings.fromJson(json.decode(str));
String castingsToJson(Castings data) => json.encode(data.toJson());
class Castings {
  Castings({
      Links? links,}){
    _links = links;
}

  Castings.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}


Categories categoriesFromJson(String str) => Categories.fromJson(json.decode(str));
String categoriesToJson(Categories data) => json.encode(data.toJson());
class Categories {
  Categories({
      Links? links,}){
    _links = links;
}

  Categories.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}


Genres genresFromJson(String str) => Genres.fromJson(json.decode(str));
String genresToJson(Genres data) => json.encode(data.toJson());
class Genres {
  Genres({
      Links? links,}){
    _links = links;
}

  Genres.fromJson(dynamic json) {
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  Links? _links;

  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}


Attributes attributesFromJson(String str) => Attributes.fromJson(json.decode(str));
String attributesToJson(Attributes data) => json.encode(data.toJson());
class Attributes {
  Attributes({
      String? createdAt, 
      String? updatedAt, 
      String? slug, 
      String? synopsis, 
      String? description, 
      int? coverImageTopOffset, 
      Titles? titles, 
      String? canonicalTitle, 
      List<String>? abbreviatedTitles, 
      String? averageRating,
      int? userCount, 
      int? favoritesCount, 
      String? startDate, 
      String? endDate, 
      dynamic nextRelease, 
      int? popularityRank, 
      int? ratingRank, 
      String? ageRating, 
      String? ageRatingGuide, 
      String? subtype, 
      String? status, 
      dynamic tba, 
      PosterImage? posterImage, 
      CoverImage? coverImage, 
      int? episodeCount, 
      int? episodeLength, 
      int? totalLength, 
      String? youtubeVideoId, 
      String? showType, 
      bool? nsfw,}){
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _slug = slug;
    _synopsis = synopsis;
    _description = description;
    _coverImageTopOffset = coverImageTopOffset;
    _titles = titles;
    _canonicalTitle = canonicalTitle;
    _abbreviatedTitles = abbreviatedTitles;
    _averageRating = averageRating;
    _userCount = userCount;
    _favoritesCount = favoritesCount;
    _startDate = startDate;
    _endDate = endDate;
    _nextRelease = nextRelease;
    _popularityRank = popularityRank;
    _ratingRank = ratingRank;
    _ageRating = ageRating;
    _ageRatingGuide = ageRatingGuide;
    _subtype = subtype;
    _status = status;
    _tba = tba;
    _posterImage = posterImage;
    _coverImage = coverImage;
    _episodeCount = episodeCount;
    _episodeLength = episodeLength;
    _totalLength = totalLength;
    _youtubeVideoId = youtubeVideoId;
    _showType = showType;
    _nsfw = nsfw;
}

  Attributes.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _slug = json['slug'];
    _synopsis = json['synopsis'];
    _description = json['description'];
    _coverImageTopOffset = json['coverImageTopOffset'];
    _titles = json['titles'] != null ? Titles.fromJson(json['titles']) : null;
    _canonicalTitle = json['canonicalTitle'];
    _abbreviatedTitles = json['abbreviatedTitles'] != null ? json['abbreviatedTitles'].cast<String>() : [];
    _averageRating = json['averageRating'];
    _userCount = json['userCount'];
    _favoritesCount = json['favoritesCount'];
    _startDate = json['startDate'];
    _endDate = json['endDate'];
    _nextRelease = json['nextRelease'];
    _popularityRank = json['popularityRank'];
    _ratingRank = json['ratingRank'];
    _ageRating = json['ageRating'];
    _ageRatingGuide = json['ageRatingGuide'];
    _subtype = json['subtype'];
    _status = json['status'];
    _tba = json['tba'];
    _posterImage = json['posterImage'] != null ? PosterImage.fromJson(json['posterImage']) : null;
    _coverImage = json['coverImage'] != null ? CoverImage.fromJson(json['coverImage']) : null;
    _episodeCount = json['episodeCount'];
    _episodeLength = json['episodeLength'];
    _totalLength = json['totalLength'];
    _youtubeVideoId = json['youtubeVideoId'];
    _showType = json['showType'];
    _nsfw = json['nsfw'];
  }
  String? _createdAt;
  String? _updatedAt;
  String? _slug;
  String? _synopsis;
  String? _description;
  int? _coverImageTopOffset;
  Titles? _titles;
  String? _canonicalTitle;
  List<String>? _abbreviatedTitles;
  String? _averageRating;
  int? _userCount;
  int? _favoritesCount;
  String? _startDate;
  String? _endDate;
  dynamic _nextRelease;
  int? _popularityRank;
  int? _ratingRank;
  String? _ageRating;
  String? _ageRatingGuide;
  String? _subtype;
  String? _status;
  dynamic _tba;
  PosterImage? _posterImage;
  CoverImage? _coverImage;
  int? _episodeCount;
  int? _episodeLength;
  int? _totalLength;
  String? _youtubeVideoId;
  String? _showType;
  bool? _nsfw;

  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get slug => _slug;
  String? get synopsis => _synopsis;
  String? get description => _description;
  int? get coverImageTopOffset => _coverImageTopOffset;
  Titles? get titles => _titles;
  String? get canonicalTitle => _canonicalTitle;
  List<String>? get abbreviatedTitles => _abbreviatedTitles;
  String? get averageRating => _averageRating;
  int? get userCount => _userCount;
  int? get favoritesCount => _favoritesCount;
  String? get startDate => _startDate;
  String? get endDate => _endDate;
  dynamic get nextRelease => _nextRelease;
  int? get popularityRank => _popularityRank;
  int? get ratingRank => _ratingRank;
  String? get ageRating => _ageRating;
  String? get ageRatingGuide => _ageRatingGuide;
  String? get subtype => _subtype;
  String? get status => _status;
  dynamic get tba => _tba;
  PosterImage? get posterImage => _posterImage;
  CoverImage? get coverImage => _coverImage;
  int? get episodeCount => _episodeCount;
  int? get episodeLength => _episodeLength;
  int? get totalLength => _totalLength;
  String? get youtubeVideoId => _youtubeVideoId;
  String? get showType => _showType;
  bool? get nsfw => _nsfw;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['slug'] = _slug;
    map['synopsis'] = _synopsis;
    map['description'] = _description;
    map['coverImageTopOffset'] = _coverImageTopOffset;
    if (_titles != null) {
      map['titles'] = _titles?.toJson();
    }
    map['canonicalTitle'] = _canonicalTitle;
    map['abbreviatedTitles'] = _abbreviatedTitles;
    map['averageRating'] = _averageRating;
    map['userCount'] = _userCount;
    map['favoritesCount'] = _favoritesCount;
    map['startDate'] = _startDate;
    map['endDate'] = _endDate;
    map['nextRelease'] = _nextRelease;
    map['popularityRank'] = _popularityRank;
    map['ratingRank'] = _ratingRank;
    map['ageRating'] = _ageRating;
    map['ageRatingGuide'] = _ageRatingGuide;
    map['subtype'] = _subtype;
    map['status'] = _status;
    map['tba'] = _tba;
    if (_posterImage != null) {
      map['posterImage'] = _posterImage?.toJson();
    }
    if (_coverImage != null) {
      map['coverImage'] = _coverImage?.toJson();
    }
    map['episodeCount'] = _episodeCount;
    map['episodeLength'] = _episodeLength;
    map['totalLength'] = _totalLength;
    map['youtubeVideoId'] = _youtubeVideoId;
    map['showType'] = _showType;
    map['nsfw'] = _nsfw;
    return map;
  }

}

CoverImage coverImageFromJson(String str) => CoverImage.fromJson(json.decode(str));
String coverImageToJson(CoverImage data) => json.encode(data.toJson());
class CoverImage {
  CoverImage({
      String? tiny, 
      String? large, 
      String? small, 
      String? original, 
      Meta? meta,}){
    _tiny = tiny;
    _large = large;
    _small = small;
    _original = original;
    _meta = meta;
}

  CoverImage.fromJson(dynamic json) {
    _tiny = json['tiny'];
    _large = json['large'];
    _small = json['small'];
    _original = json['original'];
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  String? _tiny;
  String? _large;
  String? _small;
  String? _original;
  Meta? _meta;

  String? get tiny => _tiny;
  String? get large => _large;
  String? get small => _small;
  String? get original => _original;
  Meta? get meta => _meta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tiny'] = _tiny;
    map['large'] = _large;
    map['small'] = _small;
    map['original'] = _original;
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    return map;
  }

}

Meta metaFromJson(String str) => Meta.fromJson(json.decode(str));
String metaToJson(Meta data) => json.encode(data.toJson());
class Meta {
  Meta({
      Dimensions? dimensions,}){
    _dimensions = dimensions;
}

  Meta.fromJson(dynamic json) {
    _dimensions = json['dimensions'] != null ? Dimensions.fromJson(json['dimensions']) : null;
  }
  Dimensions? _dimensions;

  Dimensions? get dimensions => _dimensions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_dimensions != null) {
      map['dimensions'] = _dimensions?.toJson();
    }
    return map;
  }

}

Dimensions dimensionsFromJson(String str) => Dimensions.fromJson(json.decode(str));
String dimensionsToJson(Dimensions data) => json.encode(data.toJson());
class Dimensions {
  Dimensions({
      Tiny? tiny, 
      Large? large, 
      Small? small,}){
    _tiny = tiny;
    _large = large;
    _small = small;
}

  Dimensions.fromJson(dynamic json) {
    _tiny = json['tiny'] != null ? Tiny.fromJson(json['tiny']) : null;
    _large = json['large'] != null ? Large.fromJson(json['large']) : null;
    _small = json['small'] != null ? Small.fromJson(json['small']) : null;
  }
  Tiny? _tiny;
  Large? _large;
  Small? _small;

  Tiny? get tiny => _tiny;
  Large? get large => _large;
  Small? get small => _small;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_tiny != null) {
      map['tiny'] = _tiny?.toJson();
    }
    if (_large != null) {
      map['large'] = _large?.toJson();
    }
    if (_small != null) {
      map['small'] = _small?.toJson();
    }
    return map;
  }

}

Small smallFromJson(String str) => Small.fromJson(json.decode(str));
String smallToJson(Small data) => json.encode(data.toJson());
class Small {
  Small({
      int? width, 
      int? height,}){
    _width = width;
    _height = height;
}

  Small.fromJson(dynamic json) {
    _width = json['width'];
    _height = json['height'];
  }
  int? _width;
  int? _height;

  int? get width => _width;
  int? get height => _height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['width'] = _width;
    map['height'] = _height;
    return map;
  }

}

Large largeFromJson(String str) => Large.fromJson(json.decode(str));
String largeToJson(Large data) => json.encode(data.toJson());
class Large {
  Large({
      int? width, 
      int? height,}){
    _width = width;
    _height = height;
}

  Large.fromJson(dynamic json) {
    _width = json['width'];
    _height = json['height'];
  }
  int? _width;
  int? _height;

  int? get width => _width;
  int? get height => _height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['width'] = _width;
    map['height'] = _height;
    return map;
  }

}

Tiny tinyFromJson(String str) => Tiny.fromJson(json.decode(str));
String tinyToJson(Tiny data) => json.encode(data.toJson());
class Tiny {
  Tiny({
      int? width, 
      int? height,}){
    _width = width;
    _height = height;
}

  Tiny.fromJson(dynamic json) {
    _width = json['width'];
    _height = json['height'];
  }
  int? _width;
  int? _height;

  int? get width => _width;
  int? get height => _height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['width'] = _width;
    map['height'] = _height;
    return map;
  }

}

PosterImage posterImageFromJson(String str) => PosterImage.fromJson(json.decode(str));
String posterImageToJson(PosterImage data) => json.encode(data.toJson());
class PosterImage {
  PosterImage({
      String? tiny, 
      String? large, 
      String? small, 
      String? medium, 
      String? original, 
      Meta? meta,}){
    _tiny = tiny;
    _large = large;
    _small = small;
    _medium = medium;
    _original = original;
    _meta = meta;
}

  PosterImage.fromJson(dynamic json) {
    _tiny = json['tiny'];
    _large = json['large'];
    _small = json['small'];
    _medium = json['medium'];
    _original = json['original'];
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  String? _tiny;
  String? _large;
  String? _small;
  String? _medium;
  String? _original;
  Meta? _meta;

  String? get tiny => _tiny;
  String? get large => _large;
  String? get small => _small;
  String? get medium => _medium;
  String? get original => _original;
  Meta? get meta => _meta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tiny'] = _tiny;
    map['large'] = _large;
    map['small'] = _small;
    map['medium'] = _medium;
    map['original'] = _original;
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    return map;
  }

}




Medium mediumFromJson(String str) => Medium.fromJson(json.decode(str));
String mediumToJson(Medium data) => json.encode(data.toJson());
class Medium {
  Medium({
      int? width, 
      int? height,}){
    _width = width;
    _height = height;
}

  Medium.fromJson(dynamic json) {
    _width = json['width'];
    _height = json['height'];
  }
  int? _width;
  int? _height;

  int? get width => _width;
  int? get height => _height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['width'] = _width;
    map['height'] = _height;
    return map;
  }

}



Titles titlesFromJson(String str) => Titles.fromJson(json.decode(str));
String titlesToJson(Titles data) => json.encode(data.toJson());
class Titles {
  Titles({
      String? en, 
      String? enJp, 
      String? jaJp,}){
    _en = en;
    _enJp = enJp;
    _jaJp = jaJp;
}

  Titles.fromJson(dynamic json) {
    _en = json['en'];
    _enJp = json['en_jp'];
    _jaJp = json['ja_jp'];
  }
  String? _en;
  String? _enJp;
  String? _jaJp;

  String? get en => _en;
  String? get enJp => _enJp;
  String? get jaJp => _jaJp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = _en;
    map['en_jp'] = _enJp;
    map['ja_jp'] = _jaJp;
    return map;
  }

}

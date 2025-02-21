class EventDetail {
  String? id;
  late String _description;
  late String _date;
  late String _startTime;
  late String _endTime;
  late String _speaker;
  late bool _isFavorite;

  // Constructor
  EventDetail(this.id, this._description, this._date, this._startTime, this._endTime, this._speaker, this._isFavorite);
  // Getters
  String get description => _description;
  String get date => _date;
  String get startTime => _startTime;
  String get endTime => _endTime;
  String get speaker => _speaker;
  bool get isFavorite => _isFavorite;

  // Factory constructor to create an instance from a map
  EventDetail.fromMap(Map<String, dynamic> obj) {
    id = obj['id'];
    _description = obj['description'];
    _date = obj['date'];
    _startTime = obj['start_time'];
    _endTime = obj['end_time'];
    _speaker = obj['speaker'];
    _isFavorite = obj['is_favorite'] ; // Assuming it's stored as a string
  }

  // Method to convert the instance to a map
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{}; // Using shorthand for map initialization
    if (id != null) {
      map['id'] = id;
      map['description'] = _description;
      map['date'] = _date;
      map['start_time'] = _startTime; // Fixed: Use the getter directly
      map['end_time'] = _endTime; // Fixed: Use the getter directly
      map['speaker'] = _speaker;
    }
    return map; // Return the constructed map
  }
}

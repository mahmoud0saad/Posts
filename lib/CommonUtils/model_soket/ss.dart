/// data : {"student_id":104,"teacher_id":2,"meeting":{"created_at":"2020-09-08T13:22:29Z","duration":240,"encrypted_password":"QWNXNXA4Ty9FOXRsWjRIOTV3dWduQT09","h323_password":"6685640382","host_email":"dev.abdelalim.allam@gmail.com","host_id":"lUNOoVsgSJiab3nLzPbPrw","id":84966767541,"join_url":"https://us02web.zoom.us/j/84966767541?pwd=QWNXNXA4Ty9FOXRsWjRIOTV3dWduQT09","password":"aU5txQfKnC","pstn_password":"6685640382","start_time":"2020-09-08T13:22:29Z","start_url":"https://us02web.zoom.us/s/84966767541?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJsVU5Pb1ZzZ1NKaWFiM25MelBiUHJ3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJYMGdZWUpUSjJzQWtzREpodmVFdFhoSWZqcjlocWpCS2N5WHFlSjc2cUNFLkVnSUFBQUYwYmVIUXVBQUFIQ0FnY1ZCVk56VlhlVFZLYm05b1JsRlRhWFUyYXk5b2IwaG9kakJoYVc1c2FqWUFERE5EUWtGMWIybFpVek56UFFSMWN6QXkiLCJleHAiOjE1OTk1Nzg1NDksImlhdCI6MTU5OTU3MTM0OSwiYWlkIjoiUXVvWVlaSlBRc20tckpOeUhLTV9BQSIsImNpZCI6IiJ9.0IT6cKBZOwN7PM0SgexBvrMmGCpph3LcvByUfsyq6y0","status":"waiting","timezone":"Africa/Cairo","topic":"Meeting With teacher","type":2,"uuid":"KzZJIVu9QYOLcOoPcPEHQw==","settings":{"alternative_hosts":"","approval_type":2,"audio":"both","auto_recording":"none","close_registration":false,"cn_meeting":false,"enforce_login":false,"enforce_login_domains":"","host_video":false,"in_meeting":false,"join_before_host":false,"meeting_authentication":false,"mute_upon_entry":false,"participant_video":false,"registrants_confirmation_email":true,"registrants_email_notification":true,"request_permission_to_unmute_participants":false,"use_pmi":false,"waiting_room":true,"watermark":false,"global_dial_in_countries":["US"],"global_dial_in_numbers":[{"country":"US","country_name":"US","number":"+1 3462487799","type":"toll"},{"country":"US","country_name":"US","number":"+1 6699006833","type":"toll"},{"country":"US","country_name":"US","number":"+1 9292056099","type":"toll"},{"country":"US","country_name":"US","number":"+1 2532158782","type":"toll"},{"country":"US","country_name":"US","number":"+1 3017158592","type":"toll"},{"country":"US","country_name":"US","number":"+1 3126266799","type":"toll"}]}}}
/// event : "new_meeting"

class Ss {
  Data _data;
  String _event;

  Data get data => _data;
  String get event => _event;

  Ss({
      Data data, 
      String event}){
    _data = data;
    _event = event;
}

  Ss.fromJson(dynamic json) {
    _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
    _event = json["event"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_data != null) {
      map["data"] = _data.toJson();
    }
    map["event"] = _event;
    return map;
  }

}

/// student_id : 104
/// teacher_id : 2
/// meeting : {"created_at":"2020-09-08T13:22:29Z","duration":240,"encrypted_password":"QWNXNXA4Ty9FOXRsWjRIOTV3dWduQT09","h323_password":"6685640382","host_email":"dev.abdelalim.allam@gmail.com","host_id":"lUNOoVsgSJiab3nLzPbPrw","id":84966767541,"join_url":"https://us02web.zoom.us/j/84966767541?pwd=QWNXNXA4Ty9FOXRsWjRIOTV3dWduQT09","password":"aU5txQfKnC","pstn_password":"6685640382","start_time":"2020-09-08T13:22:29Z","start_url":"https://us02web.zoom.us/s/84966767541?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJsVU5Pb1ZzZ1NKaWFiM25MelBiUHJ3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJYMGdZWUpUSjJzQWtzREpodmVFdFhoSWZqcjlocWpCS2N5WHFlSjc2cUNFLkVnSUFBQUYwYmVIUXVBQUFIQ0FnY1ZCVk56VlhlVFZLYm05b1JsRlRhWFUyYXk5b2IwaG9kakJoYVc1c2FqWUFERE5EUWtGMWIybFpVek56UFFSMWN6QXkiLCJleHAiOjE1OTk1Nzg1NDksImlhdCI6MTU5OTU3MTM0OSwiYWlkIjoiUXVvWVlaSlBRc20tckpOeUhLTV9BQSIsImNpZCI6IiJ9.0IT6cKBZOwN7PM0SgexBvrMmGCpph3LcvByUfsyq6y0","status":"waiting","timezone":"Africa/Cairo","topic":"Meeting With teacher","type":2,"uuid":"KzZJIVu9QYOLcOoPcPEHQw==","settings":{"alternative_hosts":"","approval_type":2,"audio":"both","auto_recording":"none","close_registration":false,"cn_meeting":false,"enforce_login":false,"enforce_login_domains":"","host_video":false,"in_meeting":false,"join_before_host":false,"meeting_authentication":false,"mute_upon_entry":false,"participant_video":false,"registrants_confirmation_email":true,"registrants_email_notification":true,"request_permission_to_unmute_participants":false,"use_pmi":false,"waiting_room":true,"watermark":false,"global_dial_in_countries":["US"],"global_dial_in_numbers":[{"country":"US","country_name":"US","number":"+1 3462487799","type":"toll"},{"country":"US","country_name":"US","number":"+1 6699006833","type":"toll"},{"country":"US","country_name":"US","number":"+1 9292056099","type":"toll"},{"country":"US","country_name":"US","number":"+1 2532158782","type":"toll"},{"country":"US","country_name":"US","number":"+1 3017158592","type":"toll"},{"country":"US","country_name":"US","number":"+1 3126266799","type":"toll"}]}}

class Data {
  int _studentId;
  int _teacherId;
  Meeting _meeting;

  int get studentId => _studentId;
  int get teacherId => _teacherId;
  Meeting get meeting => _meeting;

  Data({
      int studentId, 
      int teacherId, 
      Meeting meeting}){
    _studentId = studentId;
    _teacherId = teacherId;
    _meeting = meeting;
}

  Data.fromJson(dynamic json) {
    _studentId = json["studentId"];
    _teacherId = json["teacherId"];
    _meeting = json["meeting"] != null ? Meeting.fromJson(json["meeting"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["studentId"] = _studentId;
    map["teacherId"] = _teacherId;
    if (_meeting != null) {
      map["meeting"] = _meeting.toJson();
    }
    return map;
  }

}

/// created_at : "2020-09-08T13:22:29Z"
/// duration : 240
/// encrypted_password : "QWNXNXA4Ty9FOXRsWjRIOTV3dWduQT09"
/// h323_password : "6685640382"
/// host_email : "dev.abdelalim.allam@gmail.com"
/// host_id : "lUNOoVsgSJiab3nLzPbPrw"
/// id : 84966767541
/// join_url : "https://us02web.zoom.us/j/84966767541?pwd=QWNXNXA4Ty9FOXRsWjRIOTV3dWduQT09"
/// password : "aU5txQfKnC"
/// pstn_password : "6685640382"
/// start_time : "2020-09-08T13:22:29Z"
/// start_url : "https://us02web.zoom.us/s/84966767541?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJsVU5Pb1ZzZ1NKaWFiM25MelBiUHJ3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJYMGdZWUpUSjJzQWtzREpodmVFdFhoSWZqcjlocWpCS2N5WHFlSjc2cUNFLkVnSUFBQUYwYmVIUXVBQUFIQ0FnY1ZCVk56VlhlVFZLYm05b1JsRlRhWFUyYXk5b2IwaG9kakJoYVc1c2FqWUFERE5EUWtGMWIybFpVek56UFFSMWN6QXkiLCJleHAiOjE1OTk1Nzg1NDksImlhdCI6MTU5OTU3MTM0OSwiYWlkIjoiUXVvWVlaSlBRc20tckpOeUhLTV9BQSIsImNpZCI6IiJ9.0IT6cKBZOwN7PM0SgexBvrMmGCpph3LcvByUfsyq6y0"
/// status : "waiting"
/// timezone : "Africa/Cairo"
/// topic : "Meeting With teacher"
/// type : 2
/// uuid : "KzZJIVu9QYOLcOoPcPEHQw=="
/// settings : {"alternative_hosts":"","approval_type":2,"audio":"both","auto_recording":"none","close_registration":false,"cn_meeting":false,"enforce_login":false,"enforce_login_domains":"","host_video":false,"in_meeting":false,"join_before_host":false,"meeting_authentication":false,"mute_upon_entry":false,"participant_video":false,"registrants_confirmation_email":true,"registrants_email_notification":true,"request_permission_to_unmute_participants":false,"use_pmi":false,"waiting_room":true,"watermark":false,"global_dial_in_countries":["US"],"global_dial_in_numbers":[{"country":"US","country_name":"US","number":"+1 3462487799","type":"toll"},{"country":"US","country_name":"US","number":"+1 6699006833","type":"toll"},{"country":"US","country_name":"US","number":"+1 9292056099","type":"toll"},{"country":"US","country_name":"US","number":"+1 2532158782","type":"toll"},{"country":"US","country_name":"US","number":"+1 3017158592","type":"toll"},{"country":"US","country_name":"US","number":"+1 3126266799","type":"toll"}]}

class Meeting {
  String _createdAt;
  int _duration;
  String _encryptedPassword;
  String _h323Password;
  String _hostEmail;
  String _hostId;
  int _id;
  String _joinUrl;
  String _password;
  String _pstnPassword;
  String _startTime;
  String _startUrl;
  String _status;
  String _timezone;
  String _topic;
  int _type;
  String _uuid;
  Settings _settings;

  String get createdAt => _createdAt;
  int get duration => _duration;
  String get encryptedPassword => _encryptedPassword;
  String get h323Password => _h323Password;
  String get hostEmail => _hostEmail;
  String get hostId => _hostId;
  int get id => _id;
  String get joinUrl => _joinUrl;
  String get password => _password;
  String get pstnPassword => _pstnPassword;
  String get startTime => _startTime;
  String get startUrl => _startUrl;
  String get status => _status;
  String get timezone => _timezone;
  String get topic => _topic;
  int get type => _type;
  String get uuid => _uuid;
  Settings get settings => _settings;

  Meeting({
      String createdAt, 
      int duration, 
      String encryptedPassword, 
      String h323Password, 
      String hostEmail, 
      String hostId, 
      int id, 
      String joinUrl, 
      String password, 
      String pstnPassword, 
      String startTime, 
      String startUrl, 
      String status, 
      String timezone, 
      String topic, 
      int type, 
      String uuid, 
      Settings settings}){
    _createdAt = createdAt;
    _duration = duration;
    _encryptedPassword = encryptedPassword;
    _h323Password = h323Password;
    _hostEmail = hostEmail;
    _hostId = hostId;
    _id = id;
    _joinUrl = joinUrl;
    _password = password;
    _pstnPassword = pstnPassword;
    _startTime = startTime;
    _startUrl = startUrl;
    _status = status;
    _timezone = timezone;
    _topic = topic;
    _type = type;
    _uuid = uuid;
    _settings = settings;
}

  Meeting.fromJson(dynamic json) {
    _createdAt = json["createdAt"];
    _duration = json["duration"];
    _encryptedPassword = json["encryptedPassword"];
    _h323Password = json["h323Password"];
    _hostEmail = json["hostEmail"];
    _hostId = json["hostId"];
    _id = json["id"];
    _joinUrl = json["joinUrl"];
    _password = json["password"];
    _pstnPassword = json["pstnPassword"];
    _startTime = json["startTime"];
    _startUrl = json["startUrl"];
    _status = json["status"];
    _timezone = json["timezone"];
    _topic = json["topic"];
    _type = json["type"];
    _uuid = json["uuid"];
    _settings = json["settings"] != null ? Settings.fromJson(json["settings"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["createdAt"] = _createdAt;
    map["duration"] = _duration;
    map["encryptedPassword"] = _encryptedPassword;
    map["h323Password"] = _h323Password;
    map["hostEmail"] = _hostEmail;
    map["hostId"] = _hostId;
    map["id"] = _id;
    map["joinUrl"] = _joinUrl;
    map["password"] = _password;
    map["pstnPassword"] = _pstnPassword;
    map["startTime"] = _startTime;
    map["startUrl"] = _startUrl;
    map["status"] = _status;
    map["timezone"] = _timezone;
    map["topic"] = _topic;
    map["type"] = _type;
    map["uuid"] = _uuid;
    if (_settings != null) {
      map["settings"] = _settings.toJson();
    }
    return map;
  }

}

/// alternative_hosts : ""
/// approval_type : 2
/// audio : "both"
/// auto_recording : "none"
/// close_registration : false
/// cn_meeting : false
/// enforce_login : false
/// enforce_login_domains : ""
/// host_video : false
/// in_meeting : false
/// join_before_host : false
/// meeting_authentication : false
/// mute_upon_entry : false
/// participant_video : false
/// registrants_confirmation_email : true
/// registrants_email_notification : true
/// request_permission_to_unmute_participants : false
/// use_pmi : false
/// waiting_room : true
/// watermark : false
/// global_dial_in_countries : ["US"]
/// global_dial_in_numbers : [{"country":"US","country_name":"US","number":"+1 3462487799","type":"toll"},{"country":"US","country_name":"US","number":"+1 6699006833","type":"toll"},{"country":"US","country_name":"US","number":"+1 9292056099","type":"toll"},{"country":"US","country_name":"US","number":"+1 2532158782","type":"toll"},{"country":"US","country_name":"US","number":"+1 3017158592","type":"toll"},{"country":"US","country_name":"US","number":"+1 3126266799","type":"toll"}]

class Settings {
  String _alternativeHosts;
  int _approvalType;
  String _audio;
  String _autoRecording;
  bool _closeRegistration;
  bool _cnMeeting;
  bool _enforceLogin;
  String _enforceLoginDomains;
  bool _hostVideo;
  bool _inMeeting;
  bool _joinBeforeHost;
  bool _meetingAuthentication;
  bool _muteUponEntry;
  bool _participantVideo;
  bool _registrantsConfirmationEmail;
  bool _registrantsEmailNotification;
  bool _requestPermissionToUnmuteParticipants;
  bool _usePmi;
  bool _waitingRoom;
  bool _watermark;
  List<String> _globalDialInCountries;
  List<Global_dial_in_numbers> _globalDialInNumbers;

  String get alternativeHosts => _alternativeHosts;
  int get approvalType => _approvalType;
  String get audio => _audio;
  String get autoRecording => _autoRecording;
  bool get closeRegistration => _closeRegistration;
  bool get cnMeeting => _cnMeeting;
  bool get enforceLogin => _enforceLogin;
  String get enforceLoginDomains => _enforceLoginDomains;
  bool get hostVideo => _hostVideo;
  bool get inMeeting => _inMeeting;
  bool get joinBeforeHost => _joinBeforeHost;
  bool get meetingAuthentication => _meetingAuthentication;
  bool get muteUponEntry => _muteUponEntry;
  bool get participantVideo => _participantVideo;
  bool get registrantsConfirmationEmail => _registrantsConfirmationEmail;
  bool get registrantsEmailNotification => _registrantsEmailNotification;
  bool get requestPermissionToUnmuteParticipants => _requestPermissionToUnmuteParticipants;
  bool get usePmi => _usePmi;
  bool get waitingRoom => _waitingRoom;
  bool get watermark => _watermark;
  List<String> get globalDialInCountries => _globalDialInCountries;
  List<Global_dial_in_numbers> get globalDialInNumbers => _globalDialInNumbers;

  Settings({
      String alternativeHosts, 
      int approvalType, 
      String audio, 
      String autoRecording, 
      bool closeRegistration, 
      bool cnMeeting, 
      bool enforceLogin, 
      String enforceLoginDomains, 
      bool hostVideo, 
      bool inMeeting, 
      bool joinBeforeHost, 
      bool meetingAuthentication, 
      bool muteUponEntry, 
      bool participantVideo, 
      bool registrantsConfirmationEmail, 
      bool registrantsEmailNotification, 
      bool requestPermissionToUnmuteParticipants, 
      bool usePmi, 
      bool waitingRoom, 
      bool watermark, 
      List<String> globalDialInCountries, 
      List<Global_dial_in_numbers> globalDialInNumbers}){
    _alternativeHosts = alternativeHosts;
    _approvalType = approvalType;
    _audio = audio;
    _autoRecording = autoRecording;
    _closeRegistration = closeRegistration;
    _cnMeeting = cnMeeting;
    _enforceLogin = enforceLogin;
    _enforceLoginDomains = enforceLoginDomains;
    _hostVideo = hostVideo;
    _inMeeting = inMeeting;
    _joinBeforeHost = joinBeforeHost;
    _meetingAuthentication = meetingAuthentication;
    _muteUponEntry = muteUponEntry;
    _participantVideo = participantVideo;
    _registrantsConfirmationEmail = registrantsConfirmationEmail;
    _registrantsEmailNotification = registrantsEmailNotification;
    _requestPermissionToUnmuteParticipants = requestPermissionToUnmuteParticipants;
    _usePmi = usePmi;
    _waitingRoom = waitingRoom;
    _watermark = watermark;
    _globalDialInCountries = globalDialInCountries;
    _globalDialInNumbers = globalDialInNumbers;
}

  Settings.fromJson(dynamic json) {
    _alternativeHosts = json["alternativeHosts"];
    _approvalType = json["approvalType"];
    _audio = json["audio"];
    _autoRecording = json["autoRecording"];
    _closeRegistration = json["closeRegistration"];
    _cnMeeting = json["cnMeeting"];
    _enforceLogin = json["enforceLogin"];
    _enforceLoginDomains = json["enforceLoginDomains"];
    _hostVideo = json["hostVideo"];
    _inMeeting = json["inMeeting"];
    _joinBeforeHost = json["joinBeforeHost"];
    _meetingAuthentication = json["meetingAuthentication"];
    _muteUponEntry = json["muteUponEntry"];
    _participantVideo = json["participantVideo"];
    _registrantsConfirmationEmail = json["registrantsConfirmationEmail"];
    _registrantsEmailNotification = json["registrantsEmailNotification"];
    _requestPermissionToUnmuteParticipants = json["requestPermissionToUnmuteParticipants"];
    _usePmi = json["usePmi"];
    _waitingRoom = json["waitingRoom"];
    _watermark = json["watermark"];
    _globalDialInCountries = json["globalDialInCountries"] != null ? json["globalDialInCountries"].cast<String>() : [];
    if (json["globalDialInNumbers"] != null) {
      _globalDialInNumbers = [];
      json["globalDialInNumbers"].forEach((v) {
        _globalDialInNumbers.add(Global_dial_in_numbers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["alternativeHosts"] = _alternativeHosts;
    map["approvalType"] = _approvalType;
    map["audio"] = _audio;
    map["autoRecording"] = _autoRecording;
    map["closeRegistration"] = _closeRegistration;
    map["cnMeeting"] = _cnMeeting;
    map["enforceLogin"] = _enforceLogin;
    map["enforceLoginDomains"] = _enforceLoginDomains;
    map["hostVideo"] = _hostVideo;
    map["inMeeting"] = _inMeeting;
    map["joinBeforeHost"] = _joinBeforeHost;
    map["meetingAuthentication"] = _meetingAuthentication;
    map["muteUponEntry"] = _muteUponEntry;
    map["participantVideo"] = _participantVideo;
    map["registrantsConfirmationEmail"] = _registrantsConfirmationEmail;
    map["registrantsEmailNotification"] = _registrantsEmailNotification;
    map["requestPermissionToUnmuteParticipants"] = _requestPermissionToUnmuteParticipants;
    map["usePmi"] = _usePmi;
    map["waitingRoom"] = _waitingRoom;
    map["watermark"] = _watermark;
    map["globalDialInCountries"] = _globalDialInCountries;
    if (_globalDialInNumbers != null) {
      map["globalDialInNumbers"] = _globalDialInNumbers.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// country : "US"
/// country_name : "US"
/// number : "+1 3462487799"
/// type : "toll"

class Global_dial_in_numbers {
  String _country;
  String _countryName;
  String _number;
  String _type;

  String get country => _country;
  String get countryName => _countryName;
  String get number => _number;
  String get type => _type;

  Global_dial_in_numbers({
      String country, 
      String countryName, 
      String number, 
      String type}){
    _country = country;
    _countryName = countryName;
    _number = number;
    _type = type;
}

  Global_dial_in_numbers.fromJson(dynamic json) {
    _country = json["country"];
    _countryName = json["countryName"];
    _number = json["number"];
    _type = json["type"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["country"] = _country;
    map["countryName"] = _countryName;
    map["number"] = _number;
    map["type"] = _type;
    return map;
  }

}
import 'package:posts_app/generated/json/base/json_convert_content.dart';
import 'package:posts_app/generated/json/base/json_field.dart';

class NewMeetingEntity with JsonConvert<NewMeetingEntity> {
	NewMeetingData data;
	String event;
}

class NewMeetingData with JsonConvert<NewMeetingData> {
	@JSONField(name: "student_id")
	int studentId;
	@JSONField(name: "teacher_id")
	int teacherId;
	NewMeetingDataMeeting meeting;
}

class NewMeetingDataMeeting with JsonConvert<NewMeetingDataMeeting> {
	@JSONField(name: "created_at")
	String createdAt;
	int duration;
	@JSONField(name: "encrypted_password")
	String encryptedPassword;
	@JSONField(name: "h323_password")
	String h323Password;
	@JSONField(name: "host_email")
	String hostEmail;
	@JSONField(name: "host_id")
	String hostId;
	int id;
	@JSONField(name: "join_url")
	String joinUrl;
	String password;
	@JSONField(name: "pstn_password")
	String pstnPassword;
	@JSONField(name: "start_time")
	String startTime;
	@JSONField(name: "start_url")
	String startUrl;
	String status;
	String timezone;
	String topic;
	int type;
	String uuid;
	NewMeetingDataMeetingSettings settings;
}

class NewMeetingDataMeetingSettings with JsonConvert<NewMeetingDataMeetingSettings> {
	@JSONField(name: "alternative_hosts")
	String alternativeHosts;
	@JSONField(name: "approval_type")
	int approvalType;
	String audio;
	@JSONField(name: "auto_recording")
	String autoRecording;
	@JSONField(name: "close_registration")
	bool closeRegistration;
	@JSONField(name: "cn_meeting")
	bool cnMeeting;
	@JSONField(name: "enforce_login")
	bool enforceLogin;
	@JSONField(name: "enforce_login_domains")
	String enforceLoginDomains;
	@JSONField(name: "host_video")
	bool hostVideo;
	@JSONField(name: "in_meeting")
	bool inMeeting;
	@JSONField(name: "join_before_host")
	bool joinBeforeHost;
	@JSONField(name: "meeting_authentication")
	bool meetingAuthentication;
	@JSONField(name: "mute_upon_entry")
	bool muteUponEntry;
	@JSONField(name: "participant_video")
	bool participantVideo;
	@JSONField(name: "registrants_confirmation_email")
	bool registrantsConfirmationEmail;
	@JSONField(name: "registrants_email_notification")
	bool registrantsEmailNotification;
	@JSONField(name: "request_permission_to_unmute_participants")
	bool requestPermissionToUnmuteParticipants;
	@JSONField(name: "use_pmi")
	bool usePmi;
	@JSONField(name: "waiting_room")
	bool waitingRoom;
	bool watermark;
	@JSONField(name: "global_dial_in_countries")
	List<String> globalDialInCountries;
	@JSONField(name: "global_dial_in_numbers")
	List<NewMeetingDataMeetingSettingsGlobalDialInNumber> globalDialInNumbers;
}

class NewMeetingDataMeetingSettingsGlobalDialInNumber with JsonConvert<NewMeetingDataMeetingSettingsGlobalDialInNumber> {
	String country;
	@JSONField(name: "country_name")
	String countryName;
	String number;
	String type;
}

import 'package:posts_app/CommonUtils/model_soket/new_meeting_entity.dart';

newMeetingEntityFromJson(NewMeetingEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new NewMeetingData().fromJson(json['data']);
	}
	if (json['event'] != null) {
		data.event = json['event']?.toString();
	}
	return data;
}

Map<String, dynamic> newMeetingEntityToJson(NewMeetingEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	data['event'] = entity.event;
	return data;
}

newMeetingDataFromJson(NewMeetingData data, Map<String, dynamic> json) {
	if (json['student_id'] != null) {
		data.studentId = json['student_id']?.toInt();
	}
	if (json['teacher_id'] != null) {
		data.teacherId = json['teacher_id']?.toInt();
	}
	if (json['meeting'] != null) {
		data.meeting = new NewMeetingDataMeeting().fromJson(json['meeting']);
	}
	return data;
}

Map<String, dynamic> newMeetingDataToJson(NewMeetingData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['student_id'] = entity.studentId;
	data['teacher_id'] = entity.teacherId;
	if (entity.meeting != null) {
		data['meeting'] = entity.meeting.toJson();
	}
	return data;
}

newMeetingDataMeetingFromJson(NewMeetingDataMeeting data, Map<String, dynamic> json) {
	if (json['created_at'] != null) {
		data.createdAt = json['created_at']?.toString();
	}
	if (json['duration'] != null) {
		data.duration = json['duration']?.toInt();
	}
	if (json['encrypted_password'] != null) {
		data.encryptedPassword = json['encrypted_password']?.toString();
	}
	if (json['h323_password'] != null) {
		data.h323Password = json['h323_password']?.toString();
	}
	if (json['host_email'] != null) {
		data.hostEmail = json['host_email']?.toString();
	}
	if (json['host_id'] != null) {
		data.hostId = json['host_id']?.toString();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['join_url'] != null) {
		data.joinUrl = json['join_url']?.toString();
	}
	if (json['password'] != null) {
		data.password = json['password']?.toString();
	}
	if (json['pstn_password'] != null) {
		data.pstnPassword = json['pstn_password']?.toString();
	}
	if (json['start_time'] != null) {
		data.startTime = json['start_time']?.toString();
	}
	if (json['start_url'] != null) {
		data.startUrl = json['start_url']?.toString();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toString();
	}
	if (json['timezone'] != null) {
		data.timezone = json['timezone']?.toString();
	}
	if (json['topic'] != null) {
		data.topic = json['topic']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['uuid'] != null) {
		data.uuid = json['uuid']?.toString();
	}
	if (json['settings'] != null) {
		data.settings = new NewMeetingDataMeetingSettings().fromJson(json['settings']);
	}
	return data;
}

Map<String, dynamic> newMeetingDataMeetingToJson(NewMeetingDataMeeting entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['created_at'] = entity.createdAt;
	data['duration'] = entity.duration;
	data['encrypted_password'] = entity.encryptedPassword;
	data['h323_password'] = entity.h323Password;
	data['host_email'] = entity.hostEmail;
	data['host_id'] = entity.hostId;
	data['id'] = entity.id;
	data['join_url'] = entity.joinUrl;
	data['password'] = entity.password;
	data['pstn_password'] = entity.pstnPassword;
	data['start_time'] = entity.startTime;
	data['start_url'] = entity.startUrl;
	data['status'] = entity.status;
	data['timezone'] = entity.timezone;
	data['topic'] = entity.topic;
	data['type'] = entity.type;
	data['uuid'] = entity.uuid;
	if (entity.settings != null) {
		data['settings'] = entity.settings.toJson();
	}
	return data;
}

newMeetingDataMeetingSettingsFromJson(NewMeetingDataMeetingSettings data, Map<String, dynamic> json) {
	if (json['alternative_hosts'] != null) {
		data.alternativeHosts = json['alternative_hosts']?.toString();
	}
	if (json['approval_type'] != null) {
		data.approvalType = json['approval_type']?.toInt();
	}
	if (json['audio'] != null) {
		data.audio = json['audio']?.toString();
	}
	if (json['auto_recording'] != null) {
		data.autoRecording = json['auto_recording']?.toString();
	}
	if (json['close_registration'] != null) {
		data.closeRegistration = json['close_registration'];
	}
	if (json['cn_meeting'] != null) {
		data.cnMeeting = json['cn_meeting'];
	}
	if (json['enforce_login'] != null) {
		data.enforceLogin = json['enforce_login'];
	}
	if (json['enforce_login_domains'] != null) {
		data.enforceLoginDomains = json['enforce_login_domains']?.toString();
	}
	if (json['host_video'] != null) {
		data.hostVideo = json['host_video'];
	}
	if (json['in_meeting'] != null) {
		data.inMeeting = json['in_meeting'];
	}
	if (json['join_before_host'] != null) {
		data.joinBeforeHost = json['join_before_host'];
	}
	if (json['meeting_authentication'] != null) {
		data.meetingAuthentication = json['meeting_authentication'];
	}
	if (json['mute_upon_entry'] != null) {
		data.muteUponEntry = json['mute_upon_entry'];
	}
	if (json['participant_video'] != null) {
		data.participantVideo = json['participant_video'];
	}
	if (json['registrants_confirmation_email'] != null) {
		data.registrantsConfirmationEmail = json['registrants_confirmation_email'];
	}
	if (json['registrants_email_notification'] != null) {
		data.registrantsEmailNotification = json['registrants_email_notification'];
	}
	if (json['request_permission_to_unmute_participants'] != null) {
		data.requestPermissionToUnmuteParticipants = json['request_permission_to_unmute_participants'];
	}
	if (json['use_pmi'] != null) {
		data.usePmi = json['use_pmi'];
	}
	if (json['waiting_room'] != null) {
		data.waitingRoom = json['waiting_room'];
	}
	if (json['watermark'] != null) {
		data.watermark = json['watermark'];
	}
	if (json['global_dial_in_countries'] != null) {
		data.globalDialInCountries = json['global_dial_in_countries']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['global_dial_in_numbers'] != null) {
		data.globalDialInNumbers = new List<NewMeetingDataMeetingSettingsGlobalDialInNumber>();
		(json['global_dial_in_numbers'] as List).forEach((v) {
			data.globalDialInNumbers.add(new NewMeetingDataMeetingSettingsGlobalDialInNumber().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> newMeetingDataMeetingSettingsToJson(NewMeetingDataMeetingSettings entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['alternative_hosts'] = entity.alternativeHosts;
	data['approval_type'] = entity.approvalType;
	data['audio'] = entity.audio;
	data['auto_recording'] = entity.autoRecording;
	data['close_registration'] = entity.closeRegistration;
	data['cn_meeting'] = entity.cnMeeting;
	data['enforce_login'] = entity.enforceLogin;
	data['enforce_login_domains'] = entity.enforceLoginDomains;
	data['host_video'] = entity.hostVideo;
	data['in_meeting'] = entity.inMeeting;
	data['join_before_host'] = entity.joinBeforeHost;
	data['meeting_authentication'] = entity.meetingAuthentication;
	data['mute_upon_entry'] = entity.muteUponEntry;
	data['participant_video'] = entity.participantVideo;
	data['registrants_confirmation_email'] = entity.registrantsConfirmationEmail;
	data['registrants_email_notification'] = entity.registrantsEmailNotification;
	data['request_permission_to_unmute_participants'] = entity.requestPermissionToUnmuteParticipants;
	data['use_pmi'] = entity.usePmi;
	data['waiting_room'] = entity.waitingRoom;
	data['watermark'] = entity.watermark;
	data['global_dial_in_countries'] = entity.globalDialInCountries;
	if (entity.globalDialInNumbers != null) {
		data['global_dial_in_numbers'] =  entity.globalDialInNumbers.map((v) => v.toJson()).toList();
	}
	return data;
}

newMeetingDataMeetingSettingsGlobalDialInNumberFromJson(NewMeetingDataMeetingSettingsGlobalDialInNumber data, Map<String, dynamic> json) {
	if (json['country'] != null) {
		data.country = json['country']?.toString();
	}
	if (json['country_name'] != null) {
		data.countryName = json['country_name']?.toString();
	}
	if (json['number'] != null) {
		data.number = json['number']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	return data;
}

Map<String, dynamic> newMeetingDataMeetingSettingsGlobalDialInNumberToJson(NewMeetingDataMeetingSettingsGlobalDialInNumber entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['country'] = entity.country;
	data['country_name'] = entity.countryName;
	data['number'] = entity.number;
	data['type'] = entity.type;
	return data;
}
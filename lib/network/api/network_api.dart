class Api {
  //base Url
  static const String baseUrl = "https://api.nartaqy.net/api/";

  static const String baseImageUrl = "https://api.nartaqy.net/";

  static const String doRegisterApiCall = "register";


  static const String doServerLoginApiCall = "login";

  static const String doSocialLoginApiCall = "social-auth";

  static const String getSocialLinksApiCall = "social-links";

  static const String doGoogleLoginApiCall = "https://people.googleapis.com/v1/people/me/connections?requestMask.includeField=person.names";



  static String setLanguage(String lang) => "lang/$lang";

}

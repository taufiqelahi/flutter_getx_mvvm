import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'email_hint': 'Email Address',
      'internet exceptions':'We are not able to connect\n no internet ',
  'general exceptions':'We are unable to proceed your connection\n Please try again letter '

},
    'bn_BD': {
      'email_hint': 'ইমেইল ঠিকানা'
    }
  };
}

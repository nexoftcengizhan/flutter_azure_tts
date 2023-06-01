import 'package:flutter_azure_tts/src/voices/voice_model.dart';

class Ssml {
  Ssml({required this.voice, required this.text, required this.speed});

  final Voice voice;
  final String text;
  final double speed;

  String get buildSsml {
    return "<speak version='1.0' "
        "xmlns='http://www.w3.org/2001/10/synthesis' "
        "xml:lang='${voice.locale}'>"
        "<voice xml:lang='${voice.locale}' "
        "xml:gender='${voice.gender}' "
        "name='${voice.shortName}' "
        "xmlns:mstts='http://www.w3.org/2001/mstts'>"
        "<prosody rate='$speed'>"
        "<mstts:express-as style='${Voice.voiceStyle}'> "
        "$text"
        "<\/mstts:express-as>"
        "<\/prosody><\/voice><\/speak>";
  }
}

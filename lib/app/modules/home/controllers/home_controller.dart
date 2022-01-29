import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  void increment() {
    count.value++;
  }

  void decrement() {
    count.value--;
  }

  void reset() {
    count.value = 0;
  }

  static const List<Color> colors = [
    Colors.red,
    Colors.yellowAccent,
    Colors.amberAccent,
    Colors.orange,
    Colors.green,
    Colors.yellow,
    Colors.deepOrange,
    Colors.grey,
    Colors.indigoAccent,
    Colors.lightBlue,
    Colors.orangeAccent,
    Colors.blueAccent,
    Colors.redAccent,
    Colors.orangeAccent,
  ];
  static const List<String> suras = [
    "اَللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا , وَ رِزْقًا طَيَّبًا , وَ عَمَلاً مُتَقَبَّلاً (Allahumma inni as’aluka ‘Ilman naafi’an, wa rizqan tayyiban, wa ‘amalan mutaqabbalan)",
    "اللَّهُمَّ اِنِّىْ اَسْئَلُكَ حُبَّكَ وَ حُبَّ مَنْ يُّحِبُّكَ وحُبَّ عَمَلٍ يُّقَرِّبُ اِلى حُبِّكَ(Allahumma inni as aluka hubbaka, wa hubba man yuhibbuka, wa hubba kulle ‘amalin yuqarribuni ila hubbika.)",
    "اللهم إنك عفو تحب العفو فاعفو عنى(Allahumma innaka `afuwwun, tuhibbul-`afwa, fa`fu `anni)",
    "رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ العَلِيمُ(Rabbana taqabbal minna innaka antas Sameeaul Aleem)",
    "رَبَّنَا وَاجْعَلْنَا مُسْلِمَيْنِ لَكَ وَمِن ذُرِّيَّتِنَا أُمَّةً مُّسْلِمَةً لَّكَ وَأَرِنَا مَنَاسِكَنَا وَتُبْ عَلَيْنَآ إِنَّكَ أَنتَ التَّوَّابُ الرَّحِيمُ(Rabbana wa-j'alna Muslimayni laka wa min Dhurriyatina 'Ummatan Muslimatan laka wa 'Arina Manasikana wa tub 'alayna 'innaka 'antat-Tawwabu-Raheem)",
    "رَبَّنَآ اٰتِنَا فِي الدُّنْيَا حَسَنَةً وَّفِي الْاٰخِرَةِ حَسَـنَةً وَّقِنَا عَذَابَ النَّارِ(Rabbanaaa Aatinaa Fiddunyaa H’asanata Wa Fil Aakhirati H’asanata Wa Qinaa A’d’aaban Naar)",
    "رَبَّنَا أَفْرِغْ عَلَيْنَا صَبْراً وَثَبِّتْ أَقْدَامَنَا وَانصُرْنَا عَلَى القَوْمِ الكَافِرِينَ(Rabbana afrigh 'alayna sabran wa thabbit aqdamana wansurna 'alal-qawmil-kafirin)",
    "رَبَّنَا لَا تُؤَاخِذْنَآ اِنْ نَّسِيْنَآ اَوْ اَخْطَاْنَا ۚ رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَآ اِصْرًا كَمَا حَمَلْتَهٗ عَلَي الَّذِيْنَ مِنْ قَبْلِنَا ۚ رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهٖ ۚ وَاعْفُ عَنَّا ۪ وَاغْفِرْ لَنَا ۪ وَارْحَمْنَا ۪ اَنْتَ مَوْلٰىنَا فَانْــصُرْنَا عَلَي الْقَوْمِ الْكٰفِرِيْنَ(Rabbanaa Laa Too-Akhid’naaa In-Naseenaa Aw Akht’aanaa Rabbanaa wa Laa Tah’mil A’laynaaa Is’ran Kamaa Ha’maltahoo A’lal Lad’eena min Qablinaa Rabbanaa wa Laa Tuh’ammilnaa Maa Laa T’aaqata Lanaa Bih Wa’-Fu A’nnaa Waghfirlanaa Warh’amnaa Anta Mawlaanaa Fans’urnaa A’lal Qawmil Kaafireen)",
    "رَبَّنَا لَا تُزِغْ قُلُوْبَنَا بَعْدَ اِذْ ھَدَيْتَنَا وَھَبْ لَنَا مِنْ لَّدُنْكَ رَحْمَةً ۚ اِنَّكَ اَنْتَ الْوَھَّابُ(Rabbanaa Laa Tuzigh Quloobanaa Ba’-Da Id’hadaytanaa Wa Hab Lanaa Mil Ladunka Rah’mah Innaka Antal Wahaab)",
    "رَبَّنَا إِنَّكَ جَامِعُ النَّاسِ لِيَوْمٍ لاَّ رَيْبَ فِيهِ إِنَّ اللّهَ لاَ يُخْلِفُ الْمِيعَادَ(Rabbana innaka jami'unnasi li-Yawmil la rayba fi innAllaha la yukhliful mi'aad)",
    "رَبَّنَآ اِنَّنَآ اٰمَنَّا فَاغْفِرْ لَنَا ذُنُوْبَنَا وَقِنَا عَذَابَ النَّارِ(Rabbana innana amanna faghfir lana dhunuubana wa qinna 'adhaban-Naar)",
    "رَبَّنَا آمَنَّا بِمَا أَنزَلَتْ وَاتَّبَعْنَا الرَّسُولَ فَاكْتُبْنَا مَعَ الشَّاهِدِينَِ(Rabbana amanna bima anzalta wattaba 'nar-Rusula fak-tubna ma'ash-Shahideen)",
    "رَبَّنَا اغْفِرْ لَنَا ذُنُوْبَنَا وَ اِسْرَافَنَا فِيْٓ اَمْرِنَا وَثَبِّتْ اَقْدَامَنَا وَانْصُرْنَا عَلَي الْقَوْمِ الْكٰفِرِيْنَ(Rabbanaghfir lanaa d’unoobanaa wa israafanaa fee amrinaa wa thabbit aqdaamanaa wan s’urnaa a’lal qawmil kaafireen)",
    "رَبَّنَا آمَنَّا فَاكْتُبْنَا مَعَ الشَّاهِدِينَ(Rabbana aamana faktubna ma' ash-shahideen)",
    "رَبَّنَا أَنزِلْ عَلَيْنَا مَآئِدَةً مِّنَ السَّمَاء تَكُونُ لَنَا عِيداً لِّأَوَّلِنَا وَآخِرِنَا وَآيَةً مِّنكَ وَارْزُقْنَا وَأَنتَ خَيْرُ الرَّازِقِينَ(Rabbana anzil 'alayna ma'idatam minas-Samai tuknu lana 'idal li-awwa-lina wa aakhirna wa ayatam-minka war-zuqna wa anta Khayrul-Raziqeen)",
    "رَبَّنَا ظَلَمْنَا أَنفُسَنَا وَإِن لَّمْ تَغْفِرْ لَنَا وَتَرْحَمْنَا لَنَكُونَنَّ مِنَ الْخَاسِرِينَ(Rabbana zalamna anfusina wa il lam taghfir lana wa tarhamna lana kunan minal-khasireen)",
    "رَبَّنَا لاَ تَجْعَلْنَا مَعَ الْقَوْمِ الظَّالِمِينَ(Rabbanaa Laa Taj-a’lnaa Ma – A’l Qawmiz’ Z’aalimeen)",
    "رَبَّنَا افْتَحْ بَيْنَنَا وَبَيْنَ قَوْمِنَا بِالْحَقِّ وَأَنتَ خَيْرُ الْفَاتِحِينَ(Rabbanaf-tah baynana wa bayna qawmina bil haqqi wa anta Khayrul Fatiheen)",
    "رَبَّنَا أَفْرِغْ عَلَيْنَا صَبْرًا وَتَوَفَّنَا مُسْلِمِينَ(Rabbana afrigh 'alayna sabraw wa tawaffana Muslimeen)",
    "رَبِّ اجْعَلْنِيْ مُقِيْمَ الصَّلٰوةِ وَمِنْ ذُرِّيَّتِيْ رَبَّنَا وَتَقَبَّلْ دُعَاۗءِ(Rabbij-A’lnee Muqeemas’ S’alaati Wa Min D’urrriyyatee Rabbanaa Wa Taqabbal Du-A’aa)",
  ];
}

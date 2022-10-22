// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names

import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Project1(),
    );
  }
}

class Project1 extends StatefulWidget {
  const Project1({super.key});

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  List verse = [
    {
      "line1": "لا تَشْكُ للناس جُرْحًَا أَنْتَ صَاحِبُهُ",
      "line2": "لا يُؤْلِمُ الجَرْحُ إلا مَن بِهِ ألَمُ",
    },
    {
      "line1": "شَكْوَاكَ لِلنَّاسِ يا ابنَ النَّاس منْقصَةٌ",
      "line2": "ومَن مِنَ النَّاسِ صَاحِ مَا بِهِ سَقَمُ",
    },
    {
      "line1": "فالهمُّ كالسّيْلِ والأحزان زاخِرَةٌ",
      "line2": "حُمْرُ الدَّلائلِ مَهْمَا أهْلُها كَتمُوا"
    },
    {
      "line1": "فَإِنْ شَكَوْتَ لِمَنْ طَابَ الزَّمَانُ لَهُ",
      "line2": "عَيْنَاكَ تَغْلِي وَمَنْ تَشْكُو لَهُ صَنَمُ"
    },
    {
      "line1": "وَإِذَا شَكَوْتَ لِمَنْ شَكْوَاكَ تُسْعِدُهُ",
      "line2": "أَضَفْتَ جُرْحًا لِجُرْحِكَ اِسْمُهُ النَّدَمُ",
    },
    {
      "line1": "هَلِ الْمُوَاسَاةُ يَوْمًا حرَّرَتْ وَطَنا",
      "line2": "أم التّعازي بَدِيلٌ إنْ هَوَى العَلَمُ",
    },
    {
      "line1": "مَنْ يُنْدبُ الْحَظَّ يُطْفِئُ عَيْنَ هِمّتِهِ",
      "line2": "لَا عِينَ لِلَحْظِ إنْ لَمْ تُبصرِ الْهِمَمُ",
    },
    {
      "line1": "كَمْ خَابَ ظَنّي بِمنِ أهديته ثِقتَي",
      "line2": "فَأَجْبَرَتْنِي عَلَى هِجْرَانِهِ التُّهَمُ",
    },
    {
      "line1": "كَمْ صُرْتُ جِسْرًا لمَن أحببتهُ فَمَشَى",
      "line2": "عَلَى ضُلُوعِي وَكَمْ زَلَّت بِهِ قَدَمُ",
    },
     {
      "line1": "فَدَاسَ قَلْبي وَكَانَ القَلْبُ مَنْزِلهُ",
      "line2": "فَمَا وَفَائِي لخِلٍّ مَالَهُ قَيمُ"
    },
      {
      "line1": "لَا الْيَأسُ ثَوْبي وَلَا الأحزان تَكْسِرُني",
      "line2": "جُرْحَي عَنِيدٌ بلَسْعِ النَّارِ يَلْتَئِمُ"
    },
       {
      "line1": "اِشرب دمُوعك واجْرع مُرَّهَا عَسَلًا",
      "line2": "يغزو الشُّموعَ حَريقٌ وهِيَ تَبتَسِمُ"
    },
     {
      "line1": "والْجِم هُموْمَكَ واسْرِج ظَهْرَها فَرَسًَا",
      "line2": "وانهض كسيْفٍ إذا الأنصالُ تَلْتَحِمُ"
    },
     {
      "line1": " فالْخَيْرُ حَملٌ ودِيعٌ خَائِفٌ قَلقٌ",
      "line2": "وَالشَّرُّ ذِئْبٌ خَبِيثٌ مَاكِرٌ نَهِمُ"
    },
    {
      "line1": " كُنْ ذَا دَهَاءِ وَكُنِ لِصًّا بِغَيْرِ يَدٍ",
      "line2": "تَرَى الْمَلَذَّاتِ تحتَ يَدِيكَ تَزْدَحِمُ!"
    },
     {
      "line1": " فالْمَالُ وَالْجَاهُ تِمْثَالَانِ مِنْ ذَهبٍ",
      "line2": "لَهُمَا تُصلِي بِكُلِّ لُغاتِهَا الأُممُ"
    },
  ];
  int MyIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                verse[MyIndex]["line1"],
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                verse[MyIndex]["line2"],
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (MyIndex == 0) {
                          MyIndex =verse.length -1;
                        } else {
                          MyIndex--;
                        }
                      });
                    },
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.arrow_left,
                      size: 60,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (MyIndex == verse.length -1) {
                          MyIndex = 0;
                        }
                        else{
                        MyIndex++;

                        }
                      });
                    },
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.arrow_right,
                      size: 60,
                    ),
                  )
                ],
              )
            ]),
      ),
    );
  }
}

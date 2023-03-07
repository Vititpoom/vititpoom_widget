import 'package:flutter/material.dart';
import 'package:vititpoom_widget/app_screens/lab11/map_json_to_list.dart';

class MultiQuestion extends StatefulWidget {
  const MultiQuestion({super.key});

  @override
  State<MultiQuestion> createState() => _MultiQuestionState();
}

class _MultiQuestionState extends State<MultiQuestion> {
  var questionList = {
    1: {
      'title': 'Question 1',
      'question': 'Where is this picture?',
      'imgURL':
          'https://www.latrobe.edu.au/students/opportunities/exchange/partners/images/asia/Chulalongkorn-University.jpg/preview.jpg',
      'choices': [
        'Khon Kean University',
        'Chulalongkorn University',
        'Chiang Mai University',
        'Mahidol University'
      ],
      'correct': [false, true, false, false]
    },
    2: {
      'title': 'Question 2',
      'question': 'Where is this picture?',
      'imgURL':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-S1Js16-yw7VtVZ5tAEIlwLue_-GIH0Q2-6zQ5qrPN5ddDdcOO0NuLcPlxSzHLdZbe60&usqp=CAU',
      'choices': [
        'Khon Kean University',
        'Chulalongkorn University',
        'Chiang Mai University',
        'Mahidol University'
      ],
      'correct': [true, false, false, false]
    },
    3: {
      'title': 'Question 3',
      'question': 'Where is this picture?',
      'imgURL':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/CMU_STeP.jpg/302px-CMU_STeP.jpg',
      'choices': [
        'Khon Kean University',
        'Chulalongkorn University',
        'Chiang Mai University',
        'Mahidol University'
      ],
      'correct': [false, false, true, false]
    },
  };
  @override
  Widget build(BuildContext context) {
    return MapToList(num: 1, info: questionList);
  }
}

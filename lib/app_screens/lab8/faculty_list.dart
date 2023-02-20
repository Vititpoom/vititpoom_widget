import 'package:flutter/material.dart';

import 'kku_data_model.dart';
import 'kku_detail.dart';

class FacultyList extends StatefulWidget {
  const FacultyList({super.key});

  @override
  State<FacultyList> createState() => _FacultyListState();
}

class _FacultyListState extends State<FacultyList> {
  static List<String> facultyName = ['Engineering', 'Medicine', 'Architecture'];
  static List<String> facultyThaiName = [
    'วิศวกรรมศาสตร์',
    'แพทยศาสตร์',
    'สถาปัตยกรรมศาสตร์'
  ];
  static List imgUrl = [
    'https://www.stec.co.th/imgadmins/img_proref/TH_ref_20160516123534.jpg',
    'https://th.kku.ac.th/wp-content/uploads/2021/02/md2021.jpg',
    'https://www.u-review.in.th/timthumb.php?src=/uploads/contents/20160811142552uE0fuxK.jpg&w=550&h=350'
  ];
  static List<String> urlFaculty = [
    'https://www.wn.kku.ac.th/web',
    'https://md.kku.ac.th/',
    'https://arch.kku.ac.th/web/'
  ];
  final List<KKUDataModel> kkuData = List.generate(
      facultyName.length,
      (index) => KKUDataModel(facultyName[index], imgUrl[index],
          facultyThaiName[index], urlFaculty[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KKU Faculties')),
      body: ListView.builder(
          itemCount: kkuData.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(kkuData[index].facName),
                leading: const Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          KKUDetail(kkuDataModel: kkuData[index])));
                },
              ),
            );
          }),
    );
  }
}

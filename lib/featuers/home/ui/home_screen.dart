import 'package:doc_on_time/core/helpers/spacing.dart';
import 'package:doc_on_time/core/utlis/app_images.dart';
import 'package:doc_on_time/featuers/home/data/models/specializations_response_model.dart';
import 'package:doc_on_time/featuers/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:doc_on_time/featuers/home/ui/widgets/doctors_blue_container.dart';
import 'package:doc_on_time/featuers/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:doc_on_time/featuers/home/ui/widgets/home_top_bar.dart';
import 'package:doc_on_time/featuers/home/ui/widgets/specialization_list/speciality_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Doctors> docs = [
      Doctors(
        email: 'shroida@gmail.com',
        degree: '98',
        phone: '01151769122',
        photo: AppImages.generalSpeciality,
        price: 100,
        name: 'Shroida',
      ),
      Doctors(
        email: 'shroida@gmail.com',
        degree: '98',
        phone: '01151769122',
        photo: AppImages.generalSpeciality,
        price: 100,
        name: 'Shroida',
      ),
   
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomeTopBar(),
                  const DoctorsBlueContainer(),
                  verticalSpace(24),
                  const DoctorsSpecialitySeeAll(),
                  verticalSpace(18),
                  const SpecialityListView(),
                  verticalSpace(8),
                  DoctorsListView(doctorsList: docs)
                ],
              )),
        ));
  }
}

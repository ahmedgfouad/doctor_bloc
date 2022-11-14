import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialSate());
  static AppCubit get(context) => BlocProvider.of(context);

  String olivia = "Olivia";
  List nameDoctors=["Dr.Fred Mask ","Dr. Stella Kane ","Dr.Zac Wolff"];
  List type=[
    "Brain",
    "Child",
    "Heart",
    "Teeth",
  ];
  List descriptionDoctor=[
    "brain specialist",
    "child Specialist",
    "heart Specialist",
    "teeth specialist",
    "child specialist",
  ];
  List rateDoctor =[4.9,4.8,4.5];
  List locationDoctor =[5.3,3.1,1.5];
  List doctorImage=[
    "images/doctor1.jpg",
    "images/doctor2.jpg",
    "images/doctor3.jpg",
  ];
  List imageIcon=[
    "images/brain.jpg",
    "images/children.png",
    "images/heart.png",
    "images/teath.png",
  ];


  // Put the logic down here.

  void aMethodYouWantToDoBeforeBuildingTheUi() {
    print("I am done before building the ui");
  }
}

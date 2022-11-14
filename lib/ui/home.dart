import 'package:doctor_bloc/app_cubit/cubit.dart';
import 'package:doctor_bloc/app_cubit/states.dart';
import 'package:doctor_bloc/ui/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        // An Object for controlling the logic.
        // You can create it in any place you want.
        // as much as you want!
        AppCubit.get(context);

        return Scaffold(
          backgroundColor: Colors.grey[100],
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFF063F5D),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.teal,
                            ),
                            Spacer(),
                            Icon(
                              Icons.menu,
                              color: Colors.teal,
                            ),
                            Icon(
                              Icons.menu,
                              color: Colors.teal,
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 70,
                    child: SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 400,
                        height: 800,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              topLeft: Radius.circular(40)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi ${AppCubit.get(context).olivia} ",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Welcome Back",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: Icon(Icons.search_rounded),
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Category",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "See All",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                                height: 100,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          SizedBox(
                                    width: 10,
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                        width: 100,
                                        height: 130,
                                        decoration: BoxDecoration(
                                            color: Colors.teal[700],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                                height: 40,
                                                //  width: 50,
                                                child: Image.asset(
                                                    "${AppCubit.get(context).imageIcon[index]}")),
                                            Text(
                                              "${AppCubit.get(context).type[index]}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              width: 90,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.teal[400],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Center(
                                                  child: Text(
                                                "26 Doctors",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              )),
                                            ),
                                          ],
                                        ));
                                  },
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Top rate",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "See All",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: SizedBox(
                                  child: ListView.separated(
                                scrollDirection: Axis.vertical,
                                itemCount: 3,
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        SizedBox(
                                  height: 10,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Details()),
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      height: 100,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                              height: 80,
                                              width: 90,
                                              child: Image.asset(
                                                  "${AppCubit.get(context).doctorImage[index]}")),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          SizedBox(
                                            height: 50,
                                            width: 120,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${AppCubit.get(context).nameDoctors[index]} ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  "${AppCubit.get(context).descriptionDoctor[index]} ",
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey[600]),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox(
                                              width: 10,
                                              height: 80,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                        size: 20,
                                                      ),
                                                      Text(
                                                          "${AppCubit.get(context).rateDoctor[index]}",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12)),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .location_on_rounded,
                                                        color: Colors.amber,
                                                        size: 20,
                                                      ),
                                                      Text(
                                                        "${AppCubit.get(context).locationDoctor[index]}",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:date_time/date_time.dart';
import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final date = DateTime.now();
  // print(date.copyWith(year: 2022));
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF054B72),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          Icon(Icons.notification_add),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                    color: Color(0xFF054B72),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        child: Image.network(
                          "https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "doctor name",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "disc name",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            Rate(
                              allowClear: true,
                              allowHalf: true,
                              readOnly: true,
                              initialValue: 2.6,
                              color: Colors.amber,
                              iconSize: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "April 2022",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey[800]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            separatorBuilder:
                                (BuildContext context, int index) => SizedBox(
                              width: 10,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                  width: 70,
                                  height: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.teal[700],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      // AppCubit.get(context).icons[index],
                                      Text(
                                        "mon",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "26 ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ));
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Morning",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey[800]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: GridView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 6,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 9,
                              mainAxisSpacing: 9,
                              childAspectRatio: 3 / 1,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                  width: 120,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.watch_later,
                                          color: Colors.grey[800],
                                          size: 20,
                                        ),
                                        Text(
                                          "2:43",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              color: Colors.grey[700]),
                                        ),
                                        Text(
                                          "AM",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                  ));
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Evening",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey[700]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: GridView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 6,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 9,
                                    mainAxisSpacing: 9,
                                    childAspectRatio: 3 / 1),
                            itemBuilder: (context, index) {
                              return Container(
                                  width: 120,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.watch_later,
                                          size: 20,
                                          color: Colors.grey[800],
                                        ),
                                        Text(
                                          "2:43",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              color: Colors.grey[700]),
                                        ),
                                        Text(
                                          "AM",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                  ));
                            },
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 300,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.teal[700],
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "Make An Appointment",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
// IconButton(
//     onPressed: () async {
//       selectedDate = await showDatePicker(
//           context: context,
//           initialDate: DateTime.now(),
//           firstDate: DateTime.now(),
//           lastDate: DateTime.now().add(Duration(days: 30)));
//       print(selectedDate.toString());
//       setState(() {});
//     },
//     icon: Icon(Icons.calendar_month)),

// prints 07/03/2022

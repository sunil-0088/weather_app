import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    print(ht);
    print(wt);
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(117, 180, 227, 1),
                  Color.fromARGB(255, 103, 82, 173),
                ],
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: ht * 0.45,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          color: Colors.white,
                          // splashRadius: 20,
                          onPressed: () {},
                          icon: Icon(Icons.draw_rounded),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Baran',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'sunday,november 18',
                              style: TextStyle(
                                  // color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: ht * .3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: ht * .3,
                            width: (wt - 20) / 2,
                            child: Column(
                              children: [
                                Text(
                                  '37°C',
                                  style: TextStyle(
                                      fontSize: 70, color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'min',
                                        ),
                                        Text('50'),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('max'),
                                        Text('100'),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: ht * .3,
                            width: (wt - 20) / 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                    height: 150,
                                    width: 150,
                                    child: SvgPicture.asset(
                                        'assets/images/svg/cloudy.svg')),
                                Text('scattered clouds')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.red,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                height: ht * 0.55,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TempInfo extends StatelessWidget {
  const TempInfo({
    Key? key,
    required this.ht,
    required this.wt,
  }) : super(key: key);

  final double ht;
  final double wt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                // splashRadius: 20,
                onPressed: () {},
                icon: Icon(Icons.draw_rounded),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Baran',
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'sunday,november 18',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ],
          ),
          SizedBox(
            height: 0.6 * ht,
            width: double.infinity,
            child: Card(
              elevation: 10,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '37°C',
                          style: TextStyle(fontSize: 50),
                        ),
                        SizedBox(
                            height: 150,
                            width: 150,
                            child: Image.asset('assets/images/cloudy.png'))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            info(wt, 'assets/images/icon/humidity.png'),
                            info(wt, 'assets/images/wind.png'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            info(wt, 'assets/images/cloudy.png'),
                            info(wt, 'assets/images/uv.png'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget info(double wt, imagePath) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: .3 * wt,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset(imagePath),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                'Wind',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('10 km/h'),
            ],
          )
        ],
      ),
    ),
  );
}

import 'dart:io';

import 'package:find_hospital_app/model.dart';
import 'package:flutter/material.dart';
//import 'dart:html';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Model> hospitalinfo = [];
  _HomeScreenState() {
    hospitalinfo.add(Model(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1iS-zuRe2gyxumreuX1pIqitGkNPLaorqOg&usqp=CAU',
        name: 'SS Hospitals Ltd',
        icu: 1,
        address: 'Panthpath,Dhanmondi',
        distance: '0.5 km',
        bed: 2,
        ambulance: 1,
        bloodBank: 1,
        doctor: 1));
    hospitalinfo.add(Model(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWtTBqdk4LRNpd530wK1XyyAdK763c1MZrzQ&usqp=CAU',
        name: 'RR Hospitals Ltd',
        icu: 0,
        address: 'Panthpath,Dhanmondi',
        distance: '0.8 km',
        bed: 1,
        ambulance: 1,
        bloodBank: 0,
        doctor: 1));
    hospitalinfo.add(Model(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dKDs3KYvrOkufrMzooF9nmfVupA1A6Znuw&usqp=CAU',
        name: 'UM Hospitals Ltd',
        icu: 1,
        address: 'Dhanmondi 27',
        distance: '1 km',
        bed: 5,
        ambulance: 1,
        bloodBank: 1,
        doctor: 1));
    hospitalinfo.add(Model(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStTXjeKYnOf4eiMJ99WrZA3ivU7aYxduKHNiE75X26GdtOMvY-5mz-4XqsQGPUlUdA1z4&usqp=CAU',
        name: 'Demo Hospitals Ltd',
        icu: 0,
        address: 'Panthpath,Dhanmondi',
        distance: '1.3 km',
        bed: 9,
        ambulance: 1,
        bloodBank: 1,
        doctor: 0));
    hospitalinfo.add(Model(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC_3i19uxs5il23zA70H1qPVTKwW73p5bCkA&usqp=CAU',
        name: 'Sk Hospitals Ltd',
        icu: 0,
        address: 'Dhanmondi 8/A',
        distance: '1.5 km',
        bed: 7,
        ambulance: 1,
        bloodBank: 0,
        doctor: 1));
    hospitalinfo.add(Model(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEpz9j1BCygXmvoaWmb1xQkVuaokwnNZ9v_RQDtoP4ZoYg8amADvsvf6pp_uCstT4HwhE&usqp=CAU',
        name: 'jR Hospitals Ltd',
        icu: 0,
        address: 'Shamoli',
        distance: '2 km',
        bed: 9,
        ambulance: 1,
        bloodBank: 1,
        doctor: 1));
    hospitalinfo.add(Model(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_F_MzMyRpL3DSFGVSWQaPjXhg654JVhSxSgocoljVq-keo_A0wgE2kjRNYu-WlLsWmcw&usqp=CAU',
        name: 'Sadar Hospitals Ltd',
        icu: 0,
        address: 'Bosila',
        distance: '3 km',
        bed: 12,
        ambulance: 0,
        bloodBank: 1,
        doctor: 0));
    hospitalinfo.add(Model(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsTAjHhRVNzh6OidaVgyWobta8TMHv_CSWuw&usqp=CAU',
        name: 'DOD Hospitals Ltd',
        icu: 1,
        address: 'TownHall Mohammadpur',
        distance: '5 km',
        bed: 9,
        ambulance: 1,
        bloodBank: 0,
        doctor: 1));
  }

  // Initial Selected Value
  String dropdownvalue = 'Subahanbag';

  // List of items in our dropdown menu
  var items = [
    'Subahanbag',
    'Dhanmondi 32',
    'Dhanmondi 27',
    'Lalmatia',
    'Savar',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Column(
          children: [
            Icon(Icons.call, color: Colors.amber),
            Text('0123', style: TextStyle(fontSize: 18, color: Colors.amber)),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Find your near by hospital',
            style: TextStyle(fontSize: 25, color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.all(8),
              //  width: 360,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Select Your Location ',
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                  DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ],
              ),
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 380,
                    childAspectRatio: 4 / 7,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: hospitalinfo.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 370,
                          child: Image.network(
                            '${hospitalinfo[index].image!}',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${hospitalinfo[index].name}',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.amber),
                            ),
                            Text(
                              '${hospitalinfo[index].distance}',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.amber),
                            ),
                          ],
                        ),
                        Text(
                          'Availavle bed: ${hospitalinfo[index].bed.toString()}',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        Container(
                          //width: 100,
                          height: 50,
                          child: ListTile(
                            trailing: hospitalinfo[index].icu == 1
                                ? Column(
                                    children: [
                                      Icon(
                                        Icons.check_box,
                                        color: Colors.green,
                                      ),
                                      Text('ICU',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white))
                                    ],
                                  )
                                : Column(
                                    children: [
                                      Icon(
                                        Icons.close,
                                        color: Colors.red,
                                      ),
                                      Text('ICU',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white))
                                    ],
                                  ),
                            leading: hospitalinfo[index].doctor == 1
                                ? Column(
                                    children: [
                                      Icon(
                                        Icons.check_box,
                                        color: Colors.green,
                                      ),
                                      Text('Doctor',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white))
                                    ],
                                  )
                                : Column(
                                    children: [
                                      Icon(
                                        Icons.close,
                                        color: Colors.red,
                                      ),
                                      Text('Doctor',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white))
                                    ],
                                  ),
                            subtitle: Row(children: [
                              Expanded(
                                  child: Row(
                                children: [
                                  hospitalinfo[index].ambulance == 1
                                      ? Column(
                                          children: [
                                            Icon(
                                              Icons.check_box,
                                              color: Colors.green,
                                            ),
                                            Text('Ambulance',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white))
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            Icon(
                                              Icons.close,
                                              color: Colors.red,
                                            ),
                                            Text('Ambulance',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white))
                                          ],
                                        ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  hospitalinfo[index].bloodBank == 1
                                      ? Column(
                                          children: [
                                            Icon(
                                              Icons.check_box,
                                              color: Colors.green,
                                            ),
                                            Text('Blood Bank',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white))
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            Icon(
                                              Icons.close,
                                              color: Colors.red,
                                            ),
                                            Text('Blood Bank',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white))
                                          ],
                                        ),
                                ],
                              ))
                            ]),
                          ),
                        ),
                        Text(
                          '${hospitalinfo[index].address}',
                          style: TextStyle(fontSize: 25, color: Colors.white60),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text('Booking',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white)))
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(15)),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

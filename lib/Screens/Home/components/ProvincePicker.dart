// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:vb_app/Services/fetch_data.dart';
//
// class ProvincePicker extends StatefulWidget {
//   final String SehirCodeId;
//   ProvincePicker({this.SehirCodeId});
//   @override
//   _ProvincePickerState createState() => _ProvincePickerState();
// }
//
// class _ProvincePickerState extends State<ProvincePicker> {
//   int selectedItem;
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: Services.fetchProvinceData(widget.SehirCodeId),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return Dialog(
//             backgroundColor: Color(0xffdcb079),
//             child: Stack(
//               overflow: Overflow.visible,
//               alignment: Alignment.topCenter,
//               children: [
//                 Container(
//                     height: 200,
//                     decoration: (BoxDecoration(
//                       border: Border.all(
//                         color: Color(0xffdcb079),
//                       ),
//                       borderRadius: BorderRadius.circular(20.0),
//                       color: Colors.black,
//                     )),
//                     child: CupertinoPicker(
//                       itemExtent: 55,
//                       diameterRatio: 5,
//                       onSelectedItemChanged: (index) {
//                         setState(() {
//                           selectedItem = index;
//                         });
//                       },
//                       children: List.generate(
//                         snapshot.data.length,
//                         (index) {
//                           return Center(
//                             child: Text(
//                               snapshot.data[index].IlceAdi,
//                               style: TextStyle(
//                                 fontSize: 15,
//                                 color: Color(0xffdcb079),
//                                 fontFamily: 'NovaFlat',
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     )),
//                 Positioned(
//                   child: Container(
//                     width: 300,
//                     child: Row(
//                       children: [
//                         Container(
//                           child: GestureDetector(
//                             child: CircleAvatar(
//                               backgroundColor: Colors.black,
//                               radius: 15,
//                               child: Icon(
//                                 Icons.backspace_outlined,
//                                 size: 15,
//                                 color: Color(0xffdcb079),
//                               ),
//                             ),
//                             onTap: () => Navigator.of(context).pop,
//                           ),
//                           decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(60.0)),
//                             border: Border.all(
//                               color: Color(0xffdcb079),
//                               width: 2.0,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 85,
//                         ),
//                         Container(
//                           child: CircleAvatar(
//                             backgroundColor: Colors.black,
//                             radius: 30,
//                             child: Icon(
//                               Icons.location_on,
//                               size: 25,
//                               color: Color(0xffdcb079),
//                             ),
//                           ),
//                           decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(60.0)),
//                             border: Border.all(
//                               color: Color(0xffdcb079),
//                               width: 4.0,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 75,
//                         ),
//                         Container(
//                           child: GestureDetector(
//                             child: CircleAvatar(
//                               backgroundColor: Colors.black,
//                               radius: 15,
//                               child: Icon(
//                                 Icons.check,
//                                 size: 20,
//                                 color: Color(0xffdcb079),
//                               ),
//                             ),
//                           ),
//                           decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(60.0)),
//                             border: Border.all(
//                               color: Color(0xffdcb079),
//                               width: 2.0,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   top: -30,
//                 )
//               ],
//             ),
//           );
//         }
//         return Center(
//           child: SizedBox(
//             height: 20,
//             width: 20,
//             child: CircularProgressIndicator(
//               valueColor: AlwaysStoppedAnimation<Color>(
//                 Color(0xffdcb079),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

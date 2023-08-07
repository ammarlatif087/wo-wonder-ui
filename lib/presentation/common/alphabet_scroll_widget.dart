// import 'package:azlistview/azlistview.dart';

// import '../../app/index.dart';

// class NameModel extends ISuspensionBean {
//   String name;

//   NameModel(this.name);

//   // Provide a tag for suspension; you can use the first character of the name here.
//   @override
//   String getSuspensionTag() => name[0];

//   // Override the toString() method for better debugging experience (optional)
//   @override
//   String toString() => 'NameModel { name: $name }';
// }

// class MyAzListView extends StatefulWidget {
//   const MyAzListView({super.key});

//   @override
//   _MyAzListViewState createState() => _MyAzListViewState();
// }

// class _MyAzListViewState extends State<MyAzListView> {
//   List<NameModel> names = [
//     NameModel("Alice"),
//     NameModel("Bob"),
//     NameModel("Charlie"),
//     NameModel("David"),
//     NameModel("Emma"),
//     NameModel("Frank"),
//     NameModel("Grace"),
//     NameModel("fhghfg"),
//     NameModel("jjkh"),
//     NameModel("gjhg"),
//     NameModel("Grace"),
//     NameModel("Grace"),
//     NameModel("Grace"),
//     NameModel("Grace"),
//     NameModel("Grace"),
//     NameModel("Grace"),
//     // Add more names as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     // Sort the names in alphabetical order
//     names.sort((a, b) => a.name.compareTo(b.name));

//     return AzListView(
//       data: names,
//       itemBuilder: (BuildContext context, int index) {
//         // Create your item widgets here
//         return ListTile(
//           title: Text(names[index].name),
//           // Add more widget properties as needed
//         );
//       },
//       // You can customize the side-bar here (optional)
     
//       itemCount: names.length,
//     );
//   }
// }

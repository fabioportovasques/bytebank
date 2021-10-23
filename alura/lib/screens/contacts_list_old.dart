// import 'package:alura/components/progress.dart';
// import 'package:alura/database/dao/contact_dao.dart';
// import 'package:alura/models/contact.dart';
// import 'package:alura/screens/contacts_form.dart';
// import 'package:alura/screens/transaction_form.dart';
// import 'package:flutter/material.dart';
//
// class ContactsList extends StatefulWidget {
//   @override
//   _ContactsListState createState() => _ContactsListState();
// }
//
// class _ContactsListState extends State<ContactsList> {
//   final ContactDao _dao = ContactDao();
//
//   @override
//   Widget build(BuildContext context) {
//     //contacts.add(Contact(26, 'Fulano5', 1001));
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Transfer'),
//       ),
//       body: FutureBuilder<List<Contact>>(
//         //initialData: [],
//         future: _dao.findAll(), //chama por meio do atributo dao
//         builder: (context, snapshot) {
//           final List<Contact>? contacts = snapshot.data;
//           if (contacts != null) {
//             return ListView.builder(
//               itemBuilder: (context, index) {
//                 final Contact contact = contacts[index];
//                 return _ContactItem(
//                   contact,
//                   onClick: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => TransactionForm(contact),
//                       ),
//                     );
//                   },
//                 );
//               },
//               itemCount: contacts.length,
//             );
//           }
//           return Progress();
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context)
//               .push(MaterialPageRoute(builder: (context) => ContactForm()))
//               .then((value) => setState(() {}));
//         },
//         child: Icon(
//           Icons.add,
//         ),
//
//         //onPressed gera o comportamento de click
//       ),
//     );
//   }
// }
//
// class _ContactItem extends StatefulWidget {
//   final Contact contact;
//   final Function onClick;
//
//   _ContactItem(
//       this.contact, {
//         required this.onClick,
//       });
//
//   @override
//   __ContactItemState createState() => __ContactItemState();
// }
//
// class __ContactItemState extends State<_ContactItem> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         onTap: () => onClick(),
//         title: Text(
//           widget.contact.name,
//           style: TextStyle(fontSize: 24.0),
//         ),
//         subtitle: Text(
//           widget.contact.accountNumber.toString(),
//           style: TextStyle(fontSize: 16.0),
//         ),
//       ),
//     );
//   }
//
//
//
//
//
// }
//

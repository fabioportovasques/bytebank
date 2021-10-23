class Contact {
  late final int id;
  late final String name;
  late final  int accountNumber;

  //Construtor da classe

  Contact(
      this.id,
      this.name,
      this.accountNumber
      );

  @override
  String toString() {
    return 'Contact{id: $id, name: $name, accountNumber: $accountNumber}';
  }

  // Contact.fromJson(Map<String, dynamic>json, this.id, this.name, this.accountNumber) {
  //   id = json['id'];
  //   name = json['name'];
  //   accountNumber = json ['accountNumber'];

  //}

Contact.fromJson(Map<String, dynamic> json) :
  id = json['id'],
  name = json['name'],
  accountNumber = json ['accountNumber'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'accountNumber': accountNumber,
  };


}
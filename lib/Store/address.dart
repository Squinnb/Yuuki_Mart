class Address {
  Address(this.street, this.city, this.postalCode);
  String city;
  String street;
  String postalCode;

  String get fullAddress => "$street, $city, $postalCode, Japan";
}

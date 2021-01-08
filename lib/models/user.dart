class CurrentUser {
  final String uid;
  CurrentUser({this.uid});
}

class UserData {
  final String uid;
  final String brand;
  final String model;
  final String regNo;
  final String houseNo;
  final String area;
  final String landmark;
  final String city;
  UserData(
      {this.uid,
      this.houseNo,
      this.regNo,
      this.brand,
      this.area,
      this.city,
      this.landmark,
      this.model});
}


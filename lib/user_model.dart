class UserModel {
  static UserModel? _userModel;
  late String name;

  factory UserModel() {
    if (_userModel == null) {
      _userModel = UserModel._internal();
      print("test");
      return _userModel!;
    }
    return _userModel!;
  }

  UserModel._internal();

  get getName => this.name;

  set setName(name) => this.name = name;
}

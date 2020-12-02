void main() {
  User userOne = User("Mario", 30);
  User userTwo = User("Luigi", 25);
  SuperUser userThree = SuperUser("Yoshi", 20);
  
  String user1 = '${userOne.name}, ${userOne.age}';
  print(user1);
  userOne.loggedIn();
  print('');
  String user2 = '${userTwo.name}, ${userTwo.age}';
  print(user2);
  userTwo.loggedIn();
  print('');
  String user3 = '${userThree.name}, ${userThree.age}';
  print(user3);
  userThree.loggedIn();
  userThree.publish();
}

class User{
  String name;
  int age;
  
  User(String name, int age){
    this.name = name;
    this.age = age;
  }
  
  void loggedIn(){
    print("User has logged in.");
  }
}

class SuperUser extends User{
  SuperUser(String name, int age) : super(name, age);
  
  void publish(){
    print("Data published by administrator.");
  }
}
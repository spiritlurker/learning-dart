void main() {
  Car car1 = Car("BMW", "M3", "2017");
  Truck truck1 = Truck("Toyota", "Tundra", "2019");
  Boat boat1 = Boat("Bayliner", "BL192", "2018");
  
  String carData = car1.vehicleData();
  print(carData);
  car1.honkHorn();
  print('');
  
  String truckData = truck1.vehicleData();
  print(truckData);
  truck1.tow();
  print('');
  
  String boatData = boat1.vehicleData();
  print(boatData);
  boat1.sail();
  print('');
  
}

class Vehicle{
  String make, model, year;
  
  Vehicle(String make, String model, String year){
    this.make = make;
    this.model = model;
    this.year = year;
  }
  
  String vehicleData(){
    return '${this.make}, ${this.model}, ${this.year}';
  }
}

class Car extends Vehicle{
  Car(String make, String model, String year) : super(make, model, year);
  
  void honkHorn(){
    print("Honk! Honk!");
  }
} 

class Truck extends Vehicle{
  Truck(String make, String model, String year) : super(make, model, year);
  
  void tow(){
    print("Towing.");
  }
}

class Boat extends Vehicle{
  Boat(String make, String model, String year) : super(make, model, year);
  
  void sail(){
    print("Sailing out.");
  }
}

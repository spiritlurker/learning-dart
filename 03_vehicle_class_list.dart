void main() {
  // Create a list of cars.
  List<Car> cars = [
    Car('BMW','i3','2019'),
    Car('Toyota','Camry','2018'),
    Car('Lexus',"iS",'2020')
  ];
  
  // Create a list of trucks.
  List<Truck> trucks = [
    Truck('Toyota','Tacoma','2020'),
    Truck('Ford','F250','2019'),
    Truck('GMC','Yukon','2019')
  ];
  
  // Create a list of boats.
  List<Boat> boats = [
    Boat('Bayliner','B298','2019'),
    Boat('Ralien','R92','2018'),
    Boat('Yorkshire','Y221','2020')
  ];
  
  // Call the processor to process each list of vehicle types.
  processData(cars);
  print('');
  processData(trucks);
  print('');
  processData(boats);
  print('');
}

// This function processes lists of vehicles that are passed into it. It uses the Vehicle 
// super-class to make it dynamic.
// A comparison check is done to see if the Vehicle argument passed in matches a car, 
// a truck, or a boat. 
// Note: The 'is' keyword is used to compare object types.
// Reference for object comparisons: 
// https://stackoverflow.com/questions/7715948/how-to-perform-runtime-type-checking-in-dart
void processData(List<Vehicle> v){
  if(v is List<Car>){
    List<Car> c = v;
    for(int i = 0; i < c.length; i++){
      c[i].vehicleData();
      c[i].honkHorn();
    }
 }else if(v is List<Truck>){
    List<Truck> t = v;
    for(int i = 0; i < t.length; i++){
      t[i].vehicleData();
      t[i].tow();
    }
  }else if(v is List<Boat>){
    List<Boat> b = v;
    for(int i = 0; i < b.length; i++){
      b[i].vehicleData();
      b[i].sail();
    }
  }
}

// Base vehicle class that will be used by the sub-classes.
class Vehicle{
  var make, model, year;
  Vehicle(String make, String model, String year){
    this.make = make;
    this.model = model;
    this.year = year;
  }
  void vehicleData(){
    print('${this.make}, ${this.model}, ${this.year}');
  }
}

// Car class that inherits from the Vehicle class.
class Car extends Vehicle{
  Car(String make, String model, String year) : super(make, model, year);
  
  // Honk method for the car.
  void honkHorn(){
    print('Honk!');
  }
}

// Truck class that inherits from the Vehicle class.
class Truck extends Vehicle{
  Truck(String make, String model, String year) : super(make, model, year);
  
  // Tow method for the truck.
  void tow(){
    print('Towing.');
  }
}

// Boat class that inherits from the Vehicle class.
class Boat extends Vehicle{
  Boat(String make, String model, String year) : super(make, model, year);
  
  // Sail method for the boat.
  void sail(){
    print('Sailing.');
  }
}
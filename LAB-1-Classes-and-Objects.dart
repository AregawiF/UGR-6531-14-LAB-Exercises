class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
  }

  void makeSound() {
    print("Vroom Vroom");
  }
}

class ElectricCar extends Car {
  int batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife) : super(brand, model, year);

  void displayElectricCarInfo() {
    super.displayInfo();
    print("Battery Life: $batteryLife kWh");
  }
}
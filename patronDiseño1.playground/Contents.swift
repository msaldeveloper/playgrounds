//
// patrondiseño1.swift
//
//
// Created by Isaac on 07/03/22.
//
import Foundation
//Imagina que queremos contruir un coche. Si queremos crear un coche pasando argumentos a un inicializador, puede que al final tengamos un inicializador con muchos parámetros y muchos de ellos no se usarían en la mayoría de casos.
//ESTO NO ES UN PATRON
class CustomCar {
  var numberOfDoors: Int?
  var color: UIColor?
  var size: CarSize?
  var motor: EngineSize?
  var gears: GearsType?
  init(numberOfDoors: Int?, color: UIColor?, size: CarSize?, motor: EngineSize?, gears: GearsType?) {
    self.numberOfDoors = numberOfDoors
    self.color = color
    self.size = size
    self.motor = motor
    self.gears = gears
  }
  convenience init() {
    self.init(numberOfDoors: nil, color: nil, size: nil, motor: nil, gears: nil)
  }
}
let CustomCar = CustomCar(numberOfDoors: 6, color: .black, size: <#T##CarSize?#>, motor: <#T##EngineSize?#>, gears: <#T##GearsType?#>)
//ESTE ES EL PATRON
class CarBuilder {
  private var: CustomCar
  init() {
    self.car = CustomCar
  }
  func addDoors(numberOfDoors: Int) -> CarBuilder {
    self.car.numberOfDoors = numberOfDoors
    return self
  }
  func addColor(color: UIColor) -> CarBuilder {
    self.car.color = color
    return self
  }
  func addSize(size: CarSize) -> CarBuilder {
    self.car.size = size
    return self
  }
  func addMotor(size: EngineSize) ->CarBuilder {
    self.car.motor = size
    return self
  }
  func build() -> CustomCar {
    return self.car
  }
  let myNewCar = CarBuilder().addDoors(numberOfDoors: 6).addSize(size: .big).addMotor(size: .big)
    .build()
}

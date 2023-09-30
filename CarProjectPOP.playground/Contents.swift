import Foundation

// This is simply project using Protocol Oriented Programming
 
protocol Car{
    var name: String { get }
}

protocol sportCar: Car {
    var velocityMaximun: Double { get }
}

extension Car{
    var isSportCar: Bool { self is sportCar }
}


struct sportCars: Car, sportCar{
    var name: String
    var velocityMaximun: Double
}

struct normalCars: Car {
    var name: String
    var velocityMaximun: Double
}


let allCarList: [Car] = [
    sportCars(name: "Mustang",  velocityMaximun: 256.0),
    sportCars(name: "Porsche",  velocityMaximun: 350.0),
    sportCars(name: "Ferrari",  velocityMaximun: 400.0),
    normalCars(name: "HB20", velocityMaximun: 150.0),
    normalCars(name: "Onix", velocityMaximun: 135.0),
    normalCars(name: "Fusca", velocityMaximun: 90.0)
]



for allCars in allCarList where allCars.isSportCar {
    print("Name of the car: \(allCars.name)")
}

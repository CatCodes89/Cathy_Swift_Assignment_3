class Ship {
    let name: String
    let year: Int
    let countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

class CruiseShip: Ship {
    let maxCapacity: Int
    let oceanOfOperation: String
    var currentPassengerCount: Int = 0
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addPassenger() {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print("Passenger added. Current count: \(currentPassengerCount)")
        } else {
            print("The ship is at max capacity.")
        }
    }
    
    func printPassengerCount() {
        print("Current passenger count: \(currentPassengerCount)")
    }
}

class CargoShip: Ship {
    var maxCargoCapacity: Double
    var currentCargoCount: Double = 0
    var isInternational: Bool
    
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Double, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.isInternational = isInternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addCargo(amount: Double){
        if currentCargoCount + amount <= maxCargoCapacity { currentCargoCount += amount
            print("Cargo added. Current count: \(currentCargoCount)")
        } else {
            print("The ship is at max cargo capacity.")
        }
    }
    
    func printCargoCount() {
        print("Current cargo count: \(currentCargoCount)")
    }
}

class PirateShip: Ship {
    var maxTreasureCapacity: Double
    var currentTreasureCount: Double = 0
    var numberOfCannons: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Double, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.numberOfCannons = numberOfCannons
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addTreasure(amount: Double) {
        if currentTreasureCount + amount <= maxTreasureCapacity {
            currentTreasureCount += amount
            print("Treasure added. Current count: \(currentTreasureCount)")
        } else {
            print("The ship is at max treasure capacity.")
        }
    }
    
    func printTreasureCount() {
        print("Current treasure count: \(currentTreasureCount)")
    }
}

let myCruiseShip = CruiseShip(name: "Titanic", year: 1912, countryOfOrigin: "England", maxCapacity: 1, oceanOfOperation: "Atlantic")

print("Ship Name: \(myCruiseShip.name)")
print("Year: \(myCruiseShip.year)")
print("Country of Origin: \(myCruiseShip.countryOfOrigin)")

print("Max Capacity: \(myCruiseShip.maxCapacity)")
print("Ocean of Operation: \(myCruiseShip.oceanOfOperation)")

myCruiseShip.addPassenger()
myCruiseShip.addPassenger()
myCruiseShip.printPassengerCount()

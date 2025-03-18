protocol Engine {
    var type: String { get }
}

struct ElectricEngine: Engine {
    var type: String = "Electric"
}

struct HydrogenEngine: Engine {
    var type: String = "Hydrogen"
}


class Car {
    let brand: String
    let model: String
    let year: String
    var engine: Engine

    init(brand: String, model: String, year: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }

    func drive() {
        print("주행 중...")
    }

    func stop() {
        print("멈춤")
    }
}

class ElectricCar: Car {
    init(brand: String, model: String, year: String) {
        super.init(brand: brand, model: model, year: year, engine: ElectricEngine())
    }
}

class HybridCar: Car {
    func switchEngine(to engine: Engine) {
        self.engine = engine
    }
}

let hybridCar = HybridCar(brand: "brand", model: "model", year: "year", engine: HydrogenEngine())

/// 엔진 프로토콜 정의
protocol Engine {
    var type: String { get }
}

/// ElectricEngine 구조체 정의
struct ElectricEngine: Engine {
    var type: String = "Electric"
}

/// HydrogenEngine 구조체 정의
struct HydrogenEngine: Engine {
    var type: String = "Hydrogen"
}

/// Car 클래스 정의
/// 브랜드, 모델, 연식, 엔진 속성
/// 주행, 멈춤 기능
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

/// ElectricCar 클래스 정의
/// ElectricEngine을 기본 엔진으로 설정
class ElectricCar: Car {
    init(brand: String, model: String, year: String) {
        super.init(brand: brand, model: model, year: year, engine: ElectricEngine())
    }
}

/// HybridCar 클래스 정의
/// 엔진 교체 기능 추가
class HybridCar: Car {
    func switchEngine(to engine: Engine) {
        self.engine = engine
    }
}

let hybridCar = HybridCar(brand: "brand", model: "model", year: "year", engine: HydrogenEngine())

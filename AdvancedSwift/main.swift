// MARK: - 필수 문제 1
print("********** 필수 문제 1 **********")
print(sum(4, 2))
calculate(closure: sum, a: 42, b: 8)

// MARK: - 필수 문제 2
print("********** 필수 문제 2 **********")
print(result)
print(chaining)
print(myMapResult)

// MARK: - 필수 문제 3
print("********** 필수 문제 3 **********")
print(a(array: [1, 2, 3, 4, 5]))
print(b(array: ["가", "나", "다", "라", "마"]))
print(c(array: [1, 2, 3, 4, 5]))
print(c(array: ["가", "나", "다", "라", "마"]))
print(d(array: [1, 2, 3, 4, 5]))
//print(d(array: ["가", "나", "다", "라", "마"]))

// MARK: - 도전 문제 1
print(hybridCar.engine.type)
hybridCar.switchEngine(to: ElectricEngine())
print(hybridCar.engine.type)
/**
 상속 vs 프로토콜

 상속의 장점
 - 코드의 재사용성이 높음
 - 기존 기능 확장, 새로운 기능 추가 가능

 상속의 단점
 - 다중 상속 불가능
 - 상위클래스 수정 시 하위클래스에 영향을 미쳐 유지보수 어려워짐

 프로토콜의 장점
 - 코드의 재사용성이 높고 유지보수가 쉬움
 - 다중 프로토콜 채택 가능
 - class, struct, enum 모두 사용 가능

 프로토콜의 단점
 - 선언만 정의하므로 여러 곳에서 채택 시 동일한 메서드를 여러 곳에서 구현부를 정의해야함
 */

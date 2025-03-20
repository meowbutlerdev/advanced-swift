# 필수 문제 1: 클로저 설계 및 활용하기
1. 클로저 설계하기
    - 두 개의 Int 값을 파라미터로 받고, 하나의 String 값을 반환하는 클로저를 작성하세요.
    - 클로저 내부에서 두 정수를 더한 후, 다음과 같은 문자열을 반환해야 합니다.
    ```bash
    "두 수의 합은 {합계} 입니다"
    ```
    - 클로저를 상수 sum에 저장하고, 정확한 타입을 명시하세요.
2. 클로저 호출하기
    - 파라미터로 임의의 Int 값을 전달하여 sum을 호출하는 코드를 작성하세요.
3. 함수로 클로저 전달하기
    - sum과 동일한 타입의 클로저를 파라미터로 받고 반환 값이 없는 함수 calculate를 작성하세요.
    - calculate 함수는 전달받은 클로저를 호출하는 코드를 포함해야 합니다.

# 필수 문제 2: 고차함수 사용하기
1. forEach -> map 변환하기
    - 아래의 forEach 문을 map을 사용하여 변환하세요.
    ```swift
    let numbers = [1, 2, 3, 4, 5]
    var result = [String]()
    
    for number in numbers {
        result.append(number)
    }
    ```
2. 고차함수 체이닝하기
    - 주어진 입력 배열을 filter와 map을 사용하여 다음 출력 결과를 얻도록 구현하세요.
    ```bash
    입력: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    출력: ["2", "4", "6", "8", "10"]
    ```
3. 고차함수 직접 구현하기
    - map과 동일한 기능을 하는 함수를 직접 구현하세요.
    - 함수명: myMap
    - 파라미터:
        - 배열: [Int]
        - 변환 클로저: (Int) -> String
    - 반환 값: [String]
    - 예시 호출:
        ```swift
        let result = myMap([1, 2, 3, 4, 5]) { String($0) }
        print(result) // ["1", "2", "3", "4", "5"]
        ```

# 필수 문제 3: 배열 필터링 함수 만들기
1. 특정 타입 배열 필터링하기
    - 짝수 번째 요소를 제거하는 함수를 작성하세요.
        - 함수명: a (Int 배열을 필터링)
        - 함수명: b (String 배열을 필터링)
    - 예시 호출:
        ```swift
        a([1, 2, 3, 4, 5]) // 출력: [1, 3, 5]
        b(["가", "나", "다", "라", "마"]) // 출력: ["가", "다", "마"]
        ```
2. 제네릭 함수로 통합하기
    - 두 함수를 하나로 대체할 수 있도록 제네릭 함수 c를 작성하세요.
    - 예시 호출:
        ```swift
        c([1, 2, 3, 4, 5]) // 출력: [1, 3, 5]
        c(["가", "나", "다", "라", "마"]) // 출력: ["가", "다", "마"]
        ```
3. `Numeric` 프로토콜로 확장하기
    - 함수 c를 기반으로 `Numeric` 프로토콜을 준수하는 타입만 받을 수 있도록 개선하여 함수 d를 작성하세요.

# 도전 문제 1: 자동차 객체 설계하기 (OOP)
1. Base Class Car 설계하기
    - 다음 상태와 동작을 포함하는 Car 클래스를 정의하세요.
        - 상태: 브랜드, 모델, 연식 (모두 String 타입)
        - 상태: 엔진 (커스텀 타입 Engine으로 정의)
        - 동작: drive() (출력 예시: “주행 중…”)
        - 추가 동작: stop(), charge(), refuel() 등을 자유롭게 구현하세요.
2. Car 클래스 상속하기 (ElectricCar, HybridCar)
    - ElectricCar:
        - Engine 타입을 ElectricEngine으로 설정하여 사용합니다.
    - HybridCar:
        - 새로운 엔진 타입 HydrogenEngine을 정의하여 사용합니다.
        - 새로운 동작 switchEngine(to:) 메서드를 추가하여 엔진 타입을 런타임에 변경할 수 있도록 합니다.
3. 인스턴스 생성 및 동작 테스트하기
    - HybridCar 인스턴스를 생성하고, switchEngine(to:) 메서드를 호출하여 엔진을 변경하는 코드를 작성하세요.
4. 상속과 프로토콜의 차이점 비교하기
    - 상속과 프로토콜을 이용하여 기능을 추가하는 방식의 장단점을 주석으로 설명하세요.

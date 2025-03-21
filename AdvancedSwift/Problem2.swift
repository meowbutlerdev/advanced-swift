// [Int] 를 [String]으로 변환
let numbers = [1, 2, 3, 4, 5]
var result = numbers.map { String($0) }

// 짝수만 필터링 후 [String]으로 변환
let chaining = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    .filter { $0 % 2 == 0 }
    .map { String($0) }

/// [Int]의 각 요소를 클로저로 변환하는 함수
/// - Parameters:
///   - array: Int 배열
///   - closure: 클로저
/// - Returns: String 배열
func myMap(array: [Int], closure: (Int) -> String) -> [String] {
    var newArray: [String] = []
    for number in array {
        newArray.append(closure(number))
    }

    return newArray
}

// myMap 함수에 정수를 문자열로 형 변환하는 클로저 전달
let myMapResult = myMap(array: [1, 2, 3, 4, 5]) {
    String($0)
}

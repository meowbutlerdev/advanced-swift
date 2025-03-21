// 두 정수의 합을 문자열로 반환하는 클로저
let sum: (Int, Int) -> String = {
    "두 수의 합은 \($0 + $1) 입니다"
}

/// 두 정수와 클로저를 매개변수로 받아 계산하는 함수
/// - Parameters:
///   - closure: 클로저
///   - a: 정수1
///   - b: 정수2
func calculate(closure: (Int, Int) -> String, a: Int, b: Int) {
    print(closure(a, b))
}

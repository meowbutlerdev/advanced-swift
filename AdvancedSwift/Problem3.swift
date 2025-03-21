/// 정수 배열에서 홀수 인덱스를 제거한 배열 반환 함수
/// - Parameter array: 정수 배열
/// - Returns: 홀수 인덱스가 제거된 정수 배열
func a(array: [Int]) -> [Int] {
    array.enumerated()
        .filter { $0.0 % 2 == 0 }
        .map { $0.1 }
}

/// 문자열 배열에서 홀수 인덱스를 제거한 배열 반환 함수
/// - Parameter array: 문자열 배열
/// - Returns: 홀수 인덱스가 제거된 문자열 배열
func b(array: [String]) -> [String] {
    array.enumerated()
        .filter {$0.0 % 2 == 0}
        .map { $0.1 }
}

/// 홀수 인덱스를 제거한 배열 반환 함수
/// - Parameter array: 배열
/// - Returns: 홀수 인덱스가 제거된 배열
func c<T>(array: [T]) -> [T] {
    array.enumerated()
        .filter {$0.0 % 2 == 0}
        .map { $0.1 }
}

/// Numberic 타입 배열에서 홀수 인덱스를 제거한 배열 반환 함수
/// - Parameter array: Numberic 타입 배열
/// - Returns: 홀수 인덱스가 제거된 Numberic 타입 배열
func d<T: Numeric>(array: [T]) -> [T] {
    array.enumerated()
        .filter {$0.0 % 2 == 0}
        .map { $0.1 }
}

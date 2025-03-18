func a(array: [Int]) -> [Int] {
    array.enumerated()
        .filter { $0.0 % 2 == 0 }
        .map { $0.1 }
}

func b(array: [String]) -> [String] {
    array.enumerated()
        .filter {$0.0 % 2 == 0}
        .map { $0.1 }
}

func c<T>(array: [T]) -> [T] {
    array.enumerated()
        .filter {$0.0 % 2 == 0}
        .map { $0.1 }
}

func d<T: Numeric>(array: [T]) -> [T] {
    array.enumerated()
        .filter {$0.0 % 2 == 0}
        .map { $0.1 }
}

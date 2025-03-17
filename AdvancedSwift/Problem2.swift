let numbers = [1, 2, 3, 4, 5]

var result = numbers.map { String($0) }

let chaining = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    .filter { $0 % 2 == 0 }
    .map { String($0) }

func myMap(array: [Int], closure: (Int) -> String) -> [String] {
    array.map(closure)
}

let myMapResult = myMap(array: [1, 2, 3, 4, 5]) {
    String($0)
}

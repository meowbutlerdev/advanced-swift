let sum: (Int, Int) -> String = {
    "두 수의 합은 \($0 + $1) 입니다"
}

func calculate(closure: (Int, Int) -> String, a: Int, b: Int) {
    print(closure(a, b))
}

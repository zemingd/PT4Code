 package main

import(
    "fmt"
)

func keta(n int) int {
    count := 0
    for {
        count++
        n = n/10
        if n < 10 {
            return count + 1
        }
    }
}

var A, B, X int


func calc(num int) bool {
    if X < A* num + B * keta(num) {
        return false
    }
    return true
}

func main() {
    var result int
    fmt.Scan(&A, &B, &X)
    store := 1
    start := 1

    for i:=start;i < X;i++ {
        if i % 10 == 0 {
            store = keta(i)
        }
        if X < A * i + B * store {
            result = i - 1
            break
        }
    }
    fmt.Println(result)
}

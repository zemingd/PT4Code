package main

import (
        "fmt"
)

func solution(n int) int {
        sum := 0
        for i := 1; i <= n; i++ {
                switch {
                case i%3 == 0 && i%5 == 0:
                        // "FizzBuzz"
                case i%3 == 0:
                        // "Fizz"
                case i%5 == 0:
                        // "Buzz"
                default:
                        sum += i
                }
        }
        return sum
}

func main() {
        var n int
        fmt.Scan(&n)
        fmt.Println(solution(n))
}
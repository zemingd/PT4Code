package main

import (
        "fmt"
)

func solution(x, y int) string {
        for i := 0; i <= x; i++ {
                j := x - i
                if i*4+j*2 == y {
                        return "Yes"
                }
        }
        return "No"
}

func main() {
        var x, y int
        fmt.Scan(&x, &y)
        fmt.Println(solution(x, y))
}
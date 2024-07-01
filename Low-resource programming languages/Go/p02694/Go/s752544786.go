package main

import (
        "fmt"
)

func solution(x int) int {
        m := 100
        i := 0
        for m < x {
                t := float64(m) * 0.01
                m += int(t)
                i++
        }
        return i
}

func main() {
        var x int
        fmt.Scan(&x)
        fmt.Println(solution(x))
}
package main

import (
        "fmt"
)

func EvenOrOdd(a int, b int) string {
        var result string
        if a*b%2 == 0 {
                result = "Even"
        } else {
                result = "Odd"
        }

        return result
}




func main() {
        var a int
        var b int
        fmt.Scan(&a)
        fmt.Scan(&b)
        defer fmt.Println(EvenOrOdd(a,b))
}
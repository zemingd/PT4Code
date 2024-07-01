package main

import (
    "fmt"
    "math"
)

func main() {
    var x int
    fmt.Scan(&x)
    for !isPrime2(x) {
         x++
    }
    fmt.Print(x)
}  
func isPrime2(x int) bool {
    if x == 1 {
        return false
    }
    if x == 2 {
        return true
    }
    if x%2 == 0 {
        return false
    }

    b := true
    rootx := int(math.Sqrt(float64(x)))
    i := 3
    for i <= rootx {
        if x%i == 0 {
            b = false
            break
        }
        i += 2
    }
    return b
}
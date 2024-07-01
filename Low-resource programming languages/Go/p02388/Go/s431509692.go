package main

import (
    "fmt"
    "math"
)

func main() {
    var x float64
    fmt.Scan(&x)
    fmt.Println(int(math.Pow(x, 3.0)))
}

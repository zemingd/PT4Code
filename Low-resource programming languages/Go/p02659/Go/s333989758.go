package main

import (
        "fmt"
        "math"
)

func main() {
        var a int
        var b float64
        fmt.Scan(&a, &b)
        c := int(math.Round(b * 100))
        fmt.Print(a * c / 100)
}

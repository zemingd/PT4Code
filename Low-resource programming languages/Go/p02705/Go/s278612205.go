package main

import (
    "fmt"
    "math"
)

func main() {
    
    var hankei float64
    fmt.Scan(&hankei)

    ans := hankei * 2.0 * math.Pi

    fmt.Println(ans)
}

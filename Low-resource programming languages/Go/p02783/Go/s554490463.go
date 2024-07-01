package main
import (
    "fmt"
    "math"
)

func main() {
    var h, a float64
    fmt.Scan(&h, &a)

    numOfAttacks := int(math.Ceil(h / a))
    fmt.Println(numOfAttacks)
}
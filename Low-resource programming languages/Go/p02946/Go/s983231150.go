package main
import (
    "fmt"
)

func main() {
    var k int
    var x int
    fmt.Scan(&k)
    fmt.Scan(&x)

    min := x - (k-1)
    max := x + (k-1)
    
    if min < -1000000 {
        min = -1000000
    }

    if max > 1000000 {
        max = 1000000
    }

    for i := min; i <= max; i++ {
        fmt.Printf("%d ", i);;
    }
}

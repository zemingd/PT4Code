package main
  
import (
    "fmt"
)

func main() {
    var k, x int
    fmt.Scan(&k, &x)
    for i := x - k + 1; i <= x+k-1; i++ {
        fmt.Printf("%d ", i)
    }
}
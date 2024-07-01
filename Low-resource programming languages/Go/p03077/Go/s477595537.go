package main
  
import (
    "fmt"
)

func main() {
    var n int
    fmt.Scan(&n)

    min := int(1e15)
    for i := 0; i < 5; i++ {
        var t int
        fmt.Scan(&t)
        if t < min {
            min = t
        }
    }
    r := int(n / min)
    if n%min > 0 {
        r += 1
    }
    r += 4

    fmt.Println(r)
}

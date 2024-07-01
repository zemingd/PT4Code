package main
  
import (
    "fmt"
)

func main() {
    var n, k int
    fmt.Scan(&n, &k)

    var s float64
    for i := 1; i <= n; i++ {
        p := 1 / float64(n)
        for j := 1; i*j < k; j *= 2 {
            p /= 2
        }
        s += p
    }
    fmt.Println(s)
}

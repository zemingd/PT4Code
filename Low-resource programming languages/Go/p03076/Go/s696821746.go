package main
  
import (
    "fmt"
)

func main() {
    var max, sum int
    for i := 0; i < 5; i++ {
        var t int
        fmt.Scan(&t)
        ct := ceil(t)
        sum += ct
        if ct-t > max {
            max = ct - t
        }
    }

    sum -= max
    fmt.Println(sum)
}

func ceil(n int) int {
    if n%10 > 0 {
        return (int(n/10) + 1) * 10
    } else {
        return int(n/10) * 10
    }
}

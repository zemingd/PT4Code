package main
  
import (
    "fmt"
)

func main() {
    var n int
    fmt.Scan(&n)
    ps := make([]int, n)
    for i := 0; i < n; i++ {
        fmt.Scan(&ps[i])
    }
    var cnt int
    for i := 1; i < n-1; i++ {
        if ps[i] < ps[i-1] && ps[i] > ps[i+1] ||
            ps[i] > ps[i-1] && ps[i] < ps[i+1] {
            cnt++
        }
    }
    fmt.Println(cnt)
}

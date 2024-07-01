package main
  
import (
    "fmt"
    "sort"
)

func main() {
    var n int
    fmt.Scan(&n)
    vs := make([]int, n)
    for i := range vs {
        fmt.Scan(&vs[i])
    }
    sort.Sort(sort.IntSlice(vs))
    var ans float64
    ans = (float64(vs[0]) + float64(vs[1])) / 2.0
    for i := 2; i < n; i++ {
        ans = (ans + float64(vs[i])) / 2.0
    }
    fmt.Println(ans)
}

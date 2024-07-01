package main

import "fmt"
import "sort"

func main() {
    var n int
    fmt.Scan(&n)
    v := make([]int, n)
    for i := 0; i < n; i ++ {
        fmt.Scan(&v[i])
    }
    sort.Sort(sort.IntSlice(v))
    a := float64(v[0])
    for i := 1; i < n; i ++ {
        a = (a + float64(v[i])) / 2.0
    }
    fmt.Println(a)
}

package main
  
import (
    "fmt"
)

func main() {
    var n int
    fmt.Scan(&n)
    as := make([]int, n)
    for i := range as {
        fmt.Scan(&as[i])
    }

    var cnt int
    for len(as) > 0 {
        cnt++
        p := -1
        dm := make(map[int]bool)
        for i := range as {
            if as[i] > p {
                dm[i] = true
                p = as[i]
            }
        }
        as = del(as, dm)
    }
    fmt.Println(cnt)
}

func del(s []int, km map[int]bool) []int {
    var ns []int
    for i := range s {
        if b, ok := km[i]; ok && b {
            continue
        }
        ns = append(ns, s[i])
    }
    return ns
}

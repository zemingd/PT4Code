package main

import (
    "fmt"
    "sort"
)

func main() {
    var n, hp int
    fmt.Scan(&n, &hp)

    var max int
    bs := make([]int, n)
    for i := 0; i < n; i++ {
        var a, b int
        fmt.Scan(&a, &b)
        bs[i] = b
        if a > max {
            max = a
        }
    }

    sort.Sort(sort.IntSlice(bs))

    var ok bool
    var sum int
    var cnt int
    for i := len(bs) - 1; i >= 0; i-- {
        if bs[i] <= max {
            continue
        }
        sum += bs[i]
        cnt++
        if sum >= hp {
            ok = true
            break
        }
    }
    if !ok {
        rest := hp - sum
        //fmt.Println(rest, hp, sum, max)
        if rest%max == 0 {
            cnt += int(rest / max)
        } else {
            cnt += int(rest/max) + 1
        }
    }
    fmt.Println(cnt)
}

package main

import (
    "fmt"
    "sort"
)

type As [][]int

func (a As) Len() int {
    return len(a)
}

func (a As) Swap(i, j int) {
    a[i], a[j] = a[j], a[i]
}

func (a As) Less(i, j int) bool {
    return a[i][0] > a[j][0]
}

func main() {
    var n, m int
    fmt.Scan(&n, &m)
    as := make(As, n+m)
    for i := 0; i < n; i++ {
        var a int
        fmt.Scan(&a)
        as[i] = []int{a, 1}
    }
    for i := 0; i < m; i++ {
        var b, c int
        fmt.Scan(&b, &c)
        as[n+i] = []int{c, b}
    }
    sort.Sort(as)
    var sum, cnt int
    for i := 0; i < len(as); i++ {
        wgt, num := as[i][0], as[i][1]
        if num >= n-cnt {
            sum += (n - cnt) * wgt
            break
        } else {
            sum += wgt * num
            cnt += num
        }
    }
    fmt.Println(sum)
}

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
    return a[i][0] < a[j][0]
}

func main() {
    var n, m int
    fmt.Scan(&n, &m)
    as := make(As, n)
    for i := 0; i < n; i++ {
        var a, b int
        fmt.Scan(&a, &b)
        as[i] = []int{a, b}
    }
    sort.Sort(as)

    rest := m
    var sum int
    for _, a := range as {
        price := a[0]
        num := a[1]
        if num >= rest {
            sum += rest * price
            break
        }
        sum += num * price
        rest -= num
    }

    fmt.Println(sum)
}

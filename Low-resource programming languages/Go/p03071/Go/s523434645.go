package main

import (
        "fmt"
        "sort"
)

func main() {
        var a, b int
        fmt.Scanf("%d %d", &a, &b)
        var c []int
        c = append(c, a + b)
        c = append(c, a + a - 1)
        c = append(c, b + b - 1)
        sort.Ints(c)
        fmt.Println(c[2])
}

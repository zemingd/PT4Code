package main

import (
    "fmt"
    "sort"
)

func main() {
    as := make([]int, 3)
    for i := 0; i < 3; i++ {
        fmt.Scan(&as[i])
    }   
    sort.Sort(sort.Reverse(sort.IntSlice(as)))
    var sum int 
    for i := 1; i < len(as); i++ {
        sum += as[i-1] - as[i]
    }   
    fmt.Println(sum)
}

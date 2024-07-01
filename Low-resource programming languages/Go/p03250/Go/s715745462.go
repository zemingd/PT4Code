package main

import (
    "fmt"
    "sort"
)

func main() {
    s := make([]int, 3)
    for i := range s { 
        fmt.Scan(&s[i])
    }   
    sort.Sort(sort.Reverse(sort.IntSlice(s)))
    fmt.Println(s[0]*10 + s[1] + s[2])
}

package main

import (    
　　"fmt"
    "sort"
)

func main() {
    var p, q, r int
    fmt.Scan(&p, &q, &r)
    num_list := []int{p,q,r}
    sort.Ints(num_list)
    ans := num_list[0] + num_list[1]
    fmt.Println(ans)
}
// ABC085 B - Kagami Mochi

package main

import (
    "fmt"
    "sort"
)

var d []int

func main() {
    var N int
    var In int
    var presize int
    var stage int

    fmt.Scan(&N)

    d = make([]int,N)

    for i := 0; i < N; i++ {
        fmt.Scan(&In)
        d[i] = In
    }

//  for i := 0; i < N; i++ {
//    fmt.Printf("init:d[%d]=%d\n",i,d[i])
//  }

    sort.Sort(sort.Reverse(sort.IntSlice(d)))


    stage = 0
    presize = 101

    for i := 0; i < N ; i++ {
        if d[i] < presize {
            stage++
            presize = d[i]
        } else {
            continue
        }
    }

    fmt.Println(stage)
}

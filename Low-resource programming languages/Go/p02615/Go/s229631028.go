package main

import (
    "fmt"
    "sort"
)

func main() {
    var n int

    fmt.Scan(&n)
    player := make([]int, n)

    for i := 0; i < n; i++ {
        fmt.Scan(&player[i])
    }

    //フレンドリーを逆順にソートする
    sort.Sort(sort.Reverse(sort.IntSlice(player)))
    /*
    4
    3 2 2 1
    3 (2)        -> 3 1/2 = 0
    3 (2) 2      -> 2 2/2 = 1
    3 2 (1) 2    -> 2 3/2 = 1
    =>7
    
    7
    7 6 5 4 3 2 1
    7 (6)            -> 7 1/2 = 0
    7 (5) 6          -> 6 2/2 = 1
    7 5 6 (4)        -> 6 3/2 = 1
    7 (3) 5 6 4      -> 5 4/2 = 2
    7 3 5 (2) 6 4    -> 5 5/2 = 2
    7 3 5 2 6 (1) 4  -> 4 6/2 = 3
    =>33
    */


    comfort := 0
    for i := 1; i < n; i++ {
        comfort += player[i/2]
    }
    fmt.Println(n, player, comfort)
}


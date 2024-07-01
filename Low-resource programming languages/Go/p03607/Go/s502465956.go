package main

import "fmt"

func main() {
    var A int
    fmt.Scan(&A)
    B := make(map[int]struct{}, A)
    for i := 0; i < A; i++ {
        var C int
        fmt.Scan(&C)
        if _, ok := B[C]; !ok {
		    B[C] = struct{}{}
        } else {
            delete(B, C)
        }
    }
    fmt.Println(len(B))
}
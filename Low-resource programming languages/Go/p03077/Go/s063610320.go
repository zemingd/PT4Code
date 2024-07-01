package main

import (
        "fmt"
)

func main() {
        var N, A, B, C, D, E int
        fmt.Scan(&N, &A, &B, &C, &D, &E)

        arr := []int{A, B, C, D, E}

        l := len(arr)

        min := A
        for i := 0; i < l; i++ {
                if min > arr[i] {
                        min = arr[i]
                }
        }

        fmt.Print((N / min) + 5)
}

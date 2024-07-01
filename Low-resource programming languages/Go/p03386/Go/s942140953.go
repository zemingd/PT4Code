package main

import (
    "fmt"
)

func main() {
    var start, end, k int
    fmt.Scanf("%d %d %d", &start, &end, &k)

    numsLen := end - start + 1
    if numsLen <= k*2 {
        for i := start; i <= end; i++ {
            fmt.Println(i)
        }
    } else {
        for i := start; i < start + k; i++ {
            fmt.Println(i)
        }
        for i := end - k + 1; i <= end; i++ {
            fmt.Println(i)
        }
    }
}

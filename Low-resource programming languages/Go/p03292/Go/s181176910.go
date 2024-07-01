package main

import (
    . "fmt"
    "sort"
)

func main() {
    var a1, a2, a3 int
    Scanf("%d %d %d", &a1, &a2, &a3)

    var arr []int = []int{a1, a2, a3}

    sort.Sort(sort.IntSlice(arr))

    sum := 0
    for i := 1; i < 3; i++ {
        sum += arr[i] - arr[i - 1]
    }

    Println(sum)
}

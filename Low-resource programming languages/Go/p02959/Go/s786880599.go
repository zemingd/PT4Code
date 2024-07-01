package main

import (
    "fmt"
)

func main() {
    var n int
    fmt.Scan(&n)

    aList := scanSpaceSpeparatedNumbers(n + 1)
    bList := scanSpaceSpeparatedNumbers(n)

    huntCount := 0
    for i, v := range bList {
        huntTarget := aList[i] + aList[(i + 1)]
        if v < huntTarget {
            if v > aList[i] {
                aList[(i + 1)] = huntTarget - v
            }
            huntCount += v
        } else {
            huntCount += huntTarget
        }
    }
    fmt.Println(huntCount)

}

func scanSpaceSpeparatedNumbers(n int) []int {
    aList := make([]int, n)
    for i := 0; i < n; i++ {
        fmt.Scan(&aList[i])
    }
    return aList
}


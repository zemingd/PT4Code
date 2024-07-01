package main

import (
    "fmt"
    "sort"
    "strings"
)

func sortString(s string) string {
    sl := strings.Split(s, "")
    sort.Strings(sl)
    return strings.Join(sl, "")
}

func main() {
    var s, t string
    fmt.Scan(&s)
    fmt.Scan(&t)

    if sortString(s) < sortString(t) {
        fmt.Println("Yes")
    } else {
        fmt.Println("No")
    }
}                                            
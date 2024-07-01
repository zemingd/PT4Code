package main

import (
    "fmt"
    "sort"
)

type sortRunes []rune

func (s sortRunes) Less(i, j int) bool {
    return s[i] < s[j]
}

func (s sortRunes) Swap(i, j int) {
    s[i], s[j] = s[j], s[i]
}

func (s sortRunes) Len() int {
    return len(s)
}

func main() {
    var n int
    fmt.Scan(&n)
    ss := make([]string, n)
    for i := range ss {
        fmt.Scan(&ss[i])
    }

    m := make(map[string]int)
    for i := range ss {
        r := sortRunes([]rune(ss[i]))
        sort.Sort(r)
        m[string(r)]++
    }

    var sum int
    for _, v := range m {
        if v <= 1 {
            continue
        }
        sum += v * (v - 1) / 2
    }

    fmt.Println(sum)
}

package main

import (
        "fmt"
        "sort"
)

func solution(s, t string) string {
        sb := make([]byte, len(s))
        tb := make([]byte, len(t))
        for i := range s {
                sb[i] = s[i]
        }
        for i := range t {
                tb[i] = t[i]
        }

        sort.SliceStable(sb, func(i, j int) bool { return sb[i] < sb[j] })
        sort.SliceStable(tb, func(i, j int) bool { return tb[i] > tb[j] })

        if string(sb) < string(tb) {
                return "Yes"
        }
        return "No"
}

func main() {
        var s, t string
        fmt.Scan(&s, &t)
        fmt.Println(solution(s, t))
}
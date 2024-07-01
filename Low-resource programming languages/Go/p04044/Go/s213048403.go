package main

import (
        "fmt"
        "sort"
)

func solution(n, l int, s []string) string {
        sort.Strings(s)
        ans := ""
        for _, t := range s {
                ans += t
        }
        return ans
}

func main() {
        var n, l int
        fmt.Scan(&n, &l)

        s := make([]string, n)
        for i := range s {
                var t string
                fmt.Scan(&t)
                s[i] = t
        }
        fmt.Println(solution(n, l, s))
}
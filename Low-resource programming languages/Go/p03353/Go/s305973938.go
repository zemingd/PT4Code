package main

import (
        "fmt"
        "sort"
)

func main() {
        var s string
        var k int
        fmt.Scanln(&s)
        fmt.Scan(&k)

        ss := make([]string, 0, 5)
        lm := len(s)
        if k < lm {
                lm = k
        }
        for l := 1; l <= lm; l++ {
                for i := 0; i < len(s)-l+1; i++ {
                        ss = append(ss, s[i:i+l])
                }
        }
        sort.Strings(ss)

        cnt := 0
        for i := range ss {
                if i >= 1 && ss[i] == ss[i-1] {
                        continue
                }
                cnt++
                if cnt == k {
                        fmt.Println(ss[i])
                        return
                }
        }
}
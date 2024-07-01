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

        b := []byte(s)
        sort.Sort(byteSort(b))

        ss := make([]string, 0, k)
        for i, c := range b {
                if i >= 1 && b[i] == b[i-1] {
                        continue
                }
                for i := 0; i < len(s); i++ {
                        if s[i] != c {
                                continue
                        }
                        for l := 1; i+l <= len(s); l++ {
                                ss = append(ss, s[i:i+l])
                        }
                }
                if len(ss) >= k {
                        break
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

type byteSort []byte

func (b byteSort) Len() int           { return len(b) }
func (b byteSort) Less(i, j int) bool { return b[i] < b[j] }
func (b byteSort) Swap(i, j int)      { b[i], b[j] = b[j], b[i] }
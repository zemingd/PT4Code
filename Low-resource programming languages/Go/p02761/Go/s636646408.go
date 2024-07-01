package main

import (
        "fmt"
        "strconv"
)

func main() {
        var N, M int
        fmt.Scanf("%d %d\n", &N, &M)

        t := make([]int, N, N)
        for i := range t {
                t[i] = -1
        }

        ret := true
        ans := ""
        for i := 0; i < M; i++ {
                var s, c int
                fmt.Scanf("%d %d\n", &s, &c)
                if t[s-1] == -1 {
                        t[s-1] = c
                        continue
                }
                if t[s-1] != c {
                        ret = false
                }
        }
        if !ret {
                fmt.Println(-1)
                return
        }
        for i := range t {
                if ans == "" && t[i] == -1 {
                        continue
                }
                if t[i] == -1 {
                        ans += "0"
                } else {
                        ans += strconv.Itoa(t[i])
                }
        }
        if ans[:1] == "0" && ans != "0" {
                fmt.Println(-1)
                return
        }
        if len(ans) != N {
                fmt.Println(-1)
                return
        }
        a, _ := strconv.Atoi(ans)
        fmt.Println(a)

}
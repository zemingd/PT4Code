package main

import (
        "fmt"
)

func main() {
        var s, t string
        fmt.Scanf("%s", &s)
        fmt.Scanf("%s", &t)

        s_len := len(s)
        t_len := len(t)
        min_dist := t_len

        for s_idx := 0; s_idx < s_len-t_len; s_idx++ {
                dist := 0
                for t_idx := 0; t_idx < t_len; t_idx++ {
                        if t[t_idx] != s[s_idx+t_idx] {
                                dist++
                        }
                }

                if dist < min_dist {
                        min_dist = dist
                }
        }

        fmt.Printf("%d\n", min_dist)
}
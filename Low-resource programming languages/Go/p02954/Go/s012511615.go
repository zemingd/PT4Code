package main

import (
    "fmt"
)

func main() {
    var bs []byte
    fmt.Scan(&bs)

    const R = 'R'
    const L = 'L'

    rs := make([]int, len(bs))
    bs = append(bs, 'R')

    var mode byte
    var rcnt, lcnt int
    var rpos, lpos int
    for i := range bs {
        if bs[i] == R {
            if mode == R {
                // R => R
                rcnt++
            } else {
                // L => R
                if i != 0 {
                    rs[rpos] = rcnt/2 + rcnt%2 + lcnt/2
                    rs[lpos] = lcnt/2 + lcnt%2 + rcnt/2
                }
                mode = R
                rcnt = 1
            }
        } else {
            if mode == L {
                // L => L
                lcnt++
            } else {
                // R => L
                lpos = i
                rpos = i - 1
                mode = L
                lcnt = 1
            }
        }
    }

    for i := range rs {
        if i == len(rs)-1 {
            fmt.Println(rs[i])
        } else {
            fmt.Printf("%d ", rs[i])
        }
    }
}

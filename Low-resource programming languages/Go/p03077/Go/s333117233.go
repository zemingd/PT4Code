package main

import (
    "fmt"
)

func main(){
    var N, cnt, res int
    fmt.Scan(&N)
    m := make([]int, 5)
    for i := 0; i < 5; i++ {
        fmt.Scan(&m[i])
    }
    l := make([]int, 5)
    l[0] = N
    for {
        if res != N {
            if l[4] != 0 {
                if l[4] > m[4] {
                    res += m[4]
                    l[4] = l[4] - m[4]
                } else {
                    res += l[4]
                    l[4] = 0
                }
            }
            if l[3] != 0 {
                if l[3] > m[3] {
                    l[4] += m[3]
                    l[3] = l[3] - m[3]
                } else {
                    l[4] += l[3]
                    l[3] = 0
                }
            }
            if l[2] != 0 {
                if l[2] > m[2] {
                    l[3] += m[2]
                    l[2] = l[2] - m[2]
                } else {
                    l[3] += l[2]
                    l[2] = 0
                }
            }
            if l[1] != 0 {
                if l[1] > m[1] {
                    l[2] += m[1]
                    l[1] = l[1] - m[1]
                } else {
                    l[2] += l[1]
                    l[1] = 0
                }
            }
            if l[0] != 0 {
                if l[0] > m[0] {
                    l[1] += m[0]
                    l[0] = l[0] - m[0]
                } else {
                    l[1] += l[0]
                    l[0] = 0
                }
            }
            cnt++
        } else {
            break
        }
    }
    fmt.Println(cnt)
}

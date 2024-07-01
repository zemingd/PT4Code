package main

import (
        "fmt"
)

func main() {
        var H, W int
        fmt.Scan(&H, &W)

        var list []int
        HW := make([][]bool, H)
        for h := 0; h < H; h++ {
                Ws := make([]bool, W)
                var A string
                fmt.Scan(&A)
                for w := 0; w < W; w++ {
                        if A[w] == '.' {
                                Ws[w] = true
                                list = append(list, h*W+w)
                        }
                }
                HW[h] = Ws
        }
        c := 0
        for len(list) > 0 {
                var dellist []int
                var newlist []int
                for _, v := range list {
                        w := v % W
                        h := int(v / W)
                        if w > 0 && HW[h][w-1] == false || h > 0 && HW[h-1][w] == false || w < W-1 && HW[h][w+1] == false || h < H-1 && HW[h+1][w] == false {
                                dellist = append(dellist, v)
                        } else {
                                newlist = append(newlist, v)
                        }
                }
                for _, v := range dellist {
                        w := v % W
                        h := int(v / W)
                        HW[h][w] = false
                }
                list = newlist
                c++
        }
        fmt.Println(c)
}
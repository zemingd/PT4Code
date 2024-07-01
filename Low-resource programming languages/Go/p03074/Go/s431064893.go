package main

import (
        "fmt"
)

type Pair struct {
        Start int
        End int
}

func main() {
        var n, k int
        var s string
        fmt.Scanf("%d %d", &n, &k)
        fmt.Scanf("%s", &s)
        var pairs []Pair
        var idx, last int
        last = 1
        for i:=0; i < n; i++ {
                if last == 1 && int(s[i])-int('0') == 0 {
                        idx = i
                } else if last == 0 && int(s[i])-int('0') == 1 {
                        var p Pair
                        p.Start = idx
                        p.End = i
                        pairs = append(pairs, p)
                }
                last = int(s[i])-int('0')
        }
        if last == 0 {
                        var p Pair
                        p.Start = idx
                        p.End = n - 1
                        pairs = append(pairs, p)
        }
        /*
        for _,p := range pairs {
                fmt.Printf("%d %d\n", p.Start, p.End)
        }*/

        if k > len(pairs) {
                fmt.Println(n)
        } else {
                var start, end, ml, l int
                for i := 0; i + k - 1 < len(pairs); i++ {
                        if i == 0 {
                                start = 0
                        } else {
                                start = pairs[i-1].End
                        }
                        if i + k - 1 == len(pairs) - 1 {
                                end = len(s)
                        } else {
                                end = pairs[i+k].Start
                        }
                        l = end - start
                        //fmt.Printf("start=%d, end=%d, length=%d\n", start, end, l)
                        if ml < l {
                                ml = l
                        }
                }
                fmt.Println(ml)
        }
}

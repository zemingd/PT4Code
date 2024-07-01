package main

import (
        "fmt"
)

func babble(in []int) []int {
        tin := in
        for ii := 0; ii < len(tin)-1; ii++ {
                for jj := ii + 1; jj < len(tin); jj++ {
                        if tin[ii] > tin[jj] {
                                tm := tin[ii]
                                tin[ii] = tin[jj]
                                tin[jj] = tm
                        }
                }
        }
        return tin
}

func main() {
        n := 0
        fmt.Scan(&n)

        a := make([]int, n)
        for ii := 0; ii < len(a); ii++ {
                fmt.Scan(&a[ii])
        }

        out := babble(a)
        d := []int{out[0]}
        for _, v := range out {
                found := false
                for _, vd := range d {
                        if vd == v {
                                found = true
                        }
                }
                if !found {
                        d = append(d, v)
                }
        }
        fmt.Println(len(d))
}
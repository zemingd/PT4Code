package main

import (
   "fmt"
)

func solution(n int, a []uint64) int {
   out := 0
   f := false
   for {
        for i := range a {
                if !f && a[i]%2 == 0 && a[i] > 2 {
                        a[i] /= 2
                        f = true
                } else {
                        a[i] *= 3
                }
        }
        if !f {
                break
        }
        out++
        f = false
   }
   return out
}

func main() {
   var n int
   fmt.Scan(&n)
   a := make([]uint64, n)
   for i := range a {
        fmt.Scan(&a[i])
   }
   fmt.Println(solution(n, a))
}
package main

import (
   "fmt"
   "sort"
)

func solution(n, k int, h []int) int {
   sort.Ints(h)
   out := 1 << 31
   for i := 0; i < n-k+1; i++ {
        lo := h[i]
        hi := h[i+k-1]
        out = min(out, hi-lo)
   }
   return out
}

func min(x, y int) int {
   if x < y {
        return x
   }
   return y
}

func main() {
   var n, k int
   fmt.Scan(&n, &k)
   h := make([]int, n)
   for i := range h {
        fmt.Scan(&h[i])
   }
   fmt.Println(solution(n, k, h))
}
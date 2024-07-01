package main

import (
   "fmt"
)

func solution(n int, a []int) int {
   out := 0
   for i := range a {
        out += a[i] - 1
   }
   return out
}

func main() {
   var n int
   fmt.Scan(&n)
   a := make([]int, n)
   for i := range a {
        fmt.Scan(&a[i])
   }
   fmt.Println(solution(n, a))
}
package main

import (
   "fmt"
)

func solution(n int, a []int) int {
   out := 0
   for i := range a {
        out += countDiv(a[i])
   }
   return out
}

func countDiv(x int) int {
   out := 0
   for x%2 == 0 && x > 0 {
        x /= 2
        out++
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
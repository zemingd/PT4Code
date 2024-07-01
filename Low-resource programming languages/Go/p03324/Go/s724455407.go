package main

import (
   "fmt"
)

func solution(d, n int) int {
   out := 0
   switch d {
   case 0:
        out = n
   case 1:
        out = n * 100
   case 2:
        out = n * 100 * 100
   }
   return out
}

func main() {
   var d, n int
   fmt.Scan(&d, &n)
   fmt.Println(solution(d, n))
}
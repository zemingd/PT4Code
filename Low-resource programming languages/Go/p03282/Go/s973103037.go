package main

import (
   "fmt"
)

func solution(s string, k int) string {
   i := 0
   for i = 0; i < len(s); i++ {
        if s[i] != '1' {
                break
        }
   }
   if k < i+1 {
        return "1"
   }
   return string(s[i])
}

func main() {
   var s string
   var k int
   fmt.Scan(&s, &k)
   fmt.Println(solution(s, k))
}
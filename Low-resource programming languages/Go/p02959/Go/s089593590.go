package main

import (
   "bufio"
   "fmt"
   "os"
)

func solution(n int, a, b []int) int {
   out := 0

   for i := 0; i < n; i++ {
        if b[i] > a[i] {
                out += a[i]
                b[i] = b[i] - a[i]

                if b[i] > a[i+1] {
                        out += a[i+1]
                        a[i+1] = 0
                } else {
                        a[i+1] = a[i+1] - b[i]
                        out += b[i]
                }
        } else {
                out += b[i]
        }

   }

   return out
}

func main() {
   r := bufio.NewReader(os.Stdin)
   var n int
   fmt.Fscan(r, &n)
   a := make([]int, n+1)
   for i := range a {
        fmt.Fscan(r, &a[i])
   }
   b := make([]int, n)
   for i := range b {
        fmt.Fscan(r, &b[i])
   }
   fmt.Println(solution(n, a, b))
}
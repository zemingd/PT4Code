package main

import "fmt"

var N int
var P []int

func main() {
    fmt.Scan(&N)
    P = make([]int, N)
    for i := range P {
        fmt.Scan(&P[i])
    }
  
    min := N + 100
    ans := 0
  
    for i := range P {
        if min > P[i] {
          min = P[i]
          ans ++
        }  
    }

    fmt.Println(ans)
}
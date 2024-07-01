package main

import (
	"fmt"
    "sort"
)
 
func main() {
    var n, k int
    fmt.Scanf("%d %d", &n, &k)

    prices := make([]int, n)
    for i := range prices{
      fmt.Scan(&prices[i])
    }

    sum := 0
    if n != k {
      sort.Ints(prices)
    }
    for i:=0; i<k; i++ {
      sum += prices[i]    
    }
    fmt.Print(sum)
}
package main

import (
	"fmt"
  	"math"
)

func main() {
  	var k float64
  	var n int
  	fmt.Scan(&k,&n)
    houses := make([]float64, n)
  
    for i,_ := range houses {
      fmt.Scan(&houses[i])
    }

    min := 1000000
    for i := 0; i < n; i++ {
      j := i - 1
      if i == 0 {
          j = n - 1
      } else {
      	houses[i] += k
      }
      //fmt.Printf("i=%d,j=%d\n",i,j)
      dist1 := int(math.Abs(houses[i] - houses[j]))
      //fmt.Println("dist1=",dist1)
      if min > dist1 {
          min = dist1
      }
    }
	fmt.Println(min)
}
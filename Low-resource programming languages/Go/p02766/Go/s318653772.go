package main

import (
	"fmt"
  	"math"
)

func main() {
	var n,k float64
	fmt.Scan(&n,&k)
	
	for i := 0.0; i < n; i++ {
      if n < math.Pow(k, i) {
			fmt.Println(i)
			return
		}
	}
}
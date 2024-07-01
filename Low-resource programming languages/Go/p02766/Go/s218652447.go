package main

import (
	"fmt"
  	"math"
)

func main() {
	var n,k float64
	fmt.Scan(&n,&k)
	
	for i := 0.0; i < n; i++ {
      if n == 1 {
        	fmt.Println(1)
        	return
      } else if n < math.Pow(k, i) {
			fmt.Println(i)
			return
		}
	}
}
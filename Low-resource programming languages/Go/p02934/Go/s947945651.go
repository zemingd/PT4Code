package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	nums := make([]float64,n)
	for i := range nums {
		fmt.Scan(&nums[i])
	}
  
	denSum := 0.0
	for i := 0; i < n; i++ {
		denSum += 1 / nums[i]
	}
	
	fmt.Println(1 / denSum)
}
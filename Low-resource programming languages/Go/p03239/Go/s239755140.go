package main

import (
	"fmt"
)

func main() {
	var n,t,cost,time int
	fmt.Scan(&n,&t)
	
	minCost := 1001
  	for i := 0; i < n; i++ {
  		fmt.Scan(&cost)
  		fmt.Scan(&time)
  		if time <= t && cost < minCost {
  			minCost = cost
  		}
  	}
  	if minCost == 1001 {
  		fmt.Println("TLE")
  	} else {
  		fmt.Println(minCost)
  	}
}
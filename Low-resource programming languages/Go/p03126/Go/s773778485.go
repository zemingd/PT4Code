package main

import (
	"fmt"
)

func main() {
	var n,m int
	fmt.Scan(&n,&m)
	
	foods := make([]int,m)
	
	for i := 0; i < n; i++ {
		var k,food int
		fmt.Scan(&k)
		for j := 0; j < k; j++ {
			fmt.Scan(&food)
			food--
			foods[food]++
		}
	}
	ans := 0
	for i,_ := range foods {
		if foods[i] == n {
			ans++
		}
	}
	fmt.Println(ans)
}
package main

import (
	"fmt"
)

func main() {
	var n,m int
	fmt.Scan(&n,&m)

	ansMap := make(map[int]int,m)
	for i := 0; i < n; i++ {
		var k int
		fmt.Scan(&k)
		for l := 0; l < k; l++ {
			var a int
			fmt.Scan(&a)
			ansMap[a]++
		}
	}

	count := 0
	for _,v := range ansMap {
		if v == n {
			count++
		}
	}
	fmt.Println(count)
}
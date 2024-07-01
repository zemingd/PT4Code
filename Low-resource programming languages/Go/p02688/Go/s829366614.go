package main

import (
	"fmt"
)

func main() {
	var n, k, d int
	fmt.Scan(&n, &k)

	sunu := make([]int, n)
	for i := 0; i < k; i++ {
		fmt.Scan(&d)
		for j := 0; j < d; j++ {
			var temp int
			fmt.Scan(&temp)
			sunu[temp-1]++
		}
	}

	ans := 0
	for _, v := range sunu {
		if v == 0 {
			ans++
		}
	}
	fmt.Println(ans)
}
package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scanf("%d\n", &N)

	min := int(10e7)
	ans := 0
	for i := 0; i < N; i++ {
		var n int
		fmt.Scan(&n)
		if min >= n {
			min = n
			ans++
		}
	}
	fmt.Println(ans)
}

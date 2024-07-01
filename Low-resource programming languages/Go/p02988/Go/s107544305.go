package main

import (
	"fmt"
)

func main() {
	var n, ans int
	fmt.Scan(&n)

	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
	}

	for i := 0; i < n-2; i++ {
		if (p[i] > p[i+1] && p[i+1] > p[i+2]) || (p[i] < p[i+1] && p[i+1] < p[i+2]) {
			ans++
		}
	}
	fmt.Println(ans)
}

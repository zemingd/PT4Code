package main

import (
	"fmt"
)

func main() {
	var n, x int
	fmt.Scanf("%d %d", &n, &x)

	var l int
	d := 0
	ans := 1
	for i := 0; i < n; i++ {
		fmt.Scan(&l)
		d = d + l
		if d <= x {
			ans++
		}
	}
	fmt.Println(ans)
}

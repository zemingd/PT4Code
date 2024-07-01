package main

import (
	"fmt"
)

func main() {
	var n,x int
	fmt.Scanf("%d %d", &n, &x)

	var l int
	d := 0
	ans :=0
	for i := 0; i < n; i++ {
		if d <= x {
			ans++
		}
		fmt.Scan(&l)
		d = d + l
	}
	fmt.Println(ans)
}

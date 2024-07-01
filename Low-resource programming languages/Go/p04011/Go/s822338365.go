package main

import (
	"fmt"
)

func main() {
	var n, k, x, y int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &k)
	fmt.Scanf("%d", &x)
	fmt.Scanf("%d", &y)

	var ans int
	for i := 1; i <= n; i++ {
		if i > k {
			ans = ans + y
		} else {
			ans = ans + x
		}
	}

	fmt.Println(ans)
}

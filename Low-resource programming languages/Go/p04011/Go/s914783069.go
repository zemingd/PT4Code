package main

import (
	"fmt"
)

func main() {
	var n, k, x, y int
	var ans int
	fmt.Scan(&n, &k, &x, &y)

	if k >= n {
		ans = n * x
	} else if k <= n {
		ans = k * x
		ans += (n - k) * y
	}
	fmt.Print(ans)
}

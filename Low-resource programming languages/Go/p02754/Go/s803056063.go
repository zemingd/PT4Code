package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	q := n / (a + b)
	r := n % (a + b)

	var ans int
	if a < r {
		ans = q*a + a
	} else {
		ans = q*a + r
	}

	fmt.Print(ans)
}

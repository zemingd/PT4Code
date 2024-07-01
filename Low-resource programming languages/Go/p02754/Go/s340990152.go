package main

import (
	"fmt"
)

func main() {
	var n, a, b int
	var ans int
	fmt.Scan(&n, &a, &b)

	switch {
	case n < a+b:
		if n > a {
			ans = a
		} else {
			ans = n
		}
	case n%(a+b) == 0:
		ans = a * (n / (a + b))
	case n%(a+b) != 0:
		if remainder := n % (a + b); remainder < a {
			ans = a*(n/(a+b)) + remainder
		} else if remainder > a {
			ans = a * (n/(a+b) + 1)
		}
	}
	fmt.Println(ans)
}
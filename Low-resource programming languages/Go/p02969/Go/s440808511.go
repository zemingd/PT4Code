package main

import (
	"fmt"
)

func pow(x, n, mod int64) int64 {
	if n == 0 {
		return 1
	}
	xx := x * x % mod
	r := pow(xx, n/2, mod)
	if n%2 == 1 {
		r = x * r % mod
	}
	return r
}

const mod = 1e9 + 7

func main() {
	var n int
	fmt.Scan(&n)

	fmt.Println(3 * n * n)

}

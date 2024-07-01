package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)

	var ps []int

	for i := 2; i < x; i++ {
		if isPrime(i, ps) {
			ps = append(ps, i)
		}
	}

	var ans int
	if x == 2 {
		ans = 2
	} else {
		for i := x; ; i++ {
			if isPrime(i, ps) {
				ans = i
				break
			}
		}
	}

	fmt.Print(ans)
}

func isPrime(x int, ps []int) bool {
	for _, p := range ps {
		if x % p == 0 {
			return false
		}
	}
	return true
}
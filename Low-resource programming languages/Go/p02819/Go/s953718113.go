package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)

	ps := primes(110000)
	for !ps[x] {
		x++
	}
	fmt.Println(x)
}

func primes(n int) []bool {
	ps := make([]bool, n+1)
	for i := 2; i <= n; i++ {
		ps[i] = true
	}
	for i := 2; i <= n; i++ {
		if ps[i] {
			for j := i + i; j <= n; j += i {
				ps[j] = false
			}
		}
	}
	return ps
}

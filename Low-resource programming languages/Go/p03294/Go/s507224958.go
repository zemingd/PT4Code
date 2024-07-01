package main

import (
	"fmt"
)

func main() {
	var N, a int
	fmt.Scan(&N)
	num := make([]int, N)
	var m int
	for i := 0; i < N; i++ {
		fmt.Scan(&a)
		num[i] = a
		if m == 0 {
			m = a
		} else {
			m = m * a / gcd(a, m)
		}
	}
	m = m - 1

	var sum int
	for n := 0; n < N; n++ {
		sum += m % num[n]
	}
	fmt.Print(sum)
}
func gcd(a, b int) int {
	if b == 0 {
		return a
	} else {
		return gcd(b, a%b)
	}
}

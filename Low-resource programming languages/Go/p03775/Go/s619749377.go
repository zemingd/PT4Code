package main

import (
	"fmt"
	"math"
)

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}

func keta(n int) int {
	cnt := 1
	for n / 10 > 0 {
		n /= 10
		cnt++
	}
	return cnt
}
func main() {
	var n int
	fmt.Scan(&n)

	m := 10
	for i:=1; i<=int(math.Sqrt(float64(n))); i++ {
		if n % i == 0 {
			k := max(keta(i), keta(n/i))
			if m > k {
				m = k
			}
		}
	}

	fmt.Println(m)
}
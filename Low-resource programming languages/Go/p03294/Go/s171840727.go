package main

import (
	"fmt"
)

func gcd(n, m int) int {
	if n%m == 0 {
		return m
	}
	return gcd(m, n%m)
}

func lcm(n, m int) int {
	return n * m / gcd(n, m)
}

func main() {
	var n int
	var a []int
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		var i int
		fmt.Scan(&i)
		a = append(a, i)
	}

	LCM := lcm(a[0], a[1])
	for i := 2; i < n; i++ {
		LCM = lcm(LCM, a[i])
	}

	sum := 0
	for _, v := range a {
		sum += (LCM - 1) % v
	}
	fmt.Println(sum)
}

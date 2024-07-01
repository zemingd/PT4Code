package main

import "fmt"

func main() {
	var n int
	var m int
	fmt.Scan(&n, &m)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	t := 1
	for i := 0; i < n; i++ {
		x := a[i] - a[i]/2
		if x == 1 {
			x = 3
		}
		t = lcm(t, x)
	}

	ans := m/t - m/(t*2)
	fmt.Println(ans)
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return a / gcd(a, b) * b
}

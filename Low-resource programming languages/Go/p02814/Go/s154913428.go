package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	v := 1
	as := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i])
		as[i] /= 2
		v = lcm(v, as[i])
	}

	ans := (m/v + 1) / 2
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

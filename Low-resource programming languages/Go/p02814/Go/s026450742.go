package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	as := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}

	var g, l, l2 int
	if n == 1 {
		g = as[0]
		l = as[0] / 2
		fmt.Println((m-l)/g + 1)
		return
	} else {
		g = gcd(as[0], as[1])
		for i := 2; i < n; i++ {
			g = gcd(g, as[i])
		}
		l2 = lcm(as[0], as[1])
		for i := 2; i < n; i++ {
			l2 = lcm(l2, as[i])
		}

		l = lcm(as[0]/g, as[1]/g)
		for i := 2; i < n; i++ {
			l = lcm(l, as[i]/g)
		}
		if l%2 == 0 {
			fmt.Println(0)
			return
		}
	}

	if m >= l {
		fmt.Println((m-l)/l2 + 1)
	} else {
		fmt.Println(0)
	}
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}

func gcd(a, b int) int {
	if a < b {
		a, b = b, a
	}
	r := a % b
	for r != 0 {
		a = b
		b = r
		r = a % b
	}
	return b
}

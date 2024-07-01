package main

import (
	"fmt"
)

func gcd(a int, b int) int {
	if b == 0 {
		return a
	}

	return gcd(b, a%b)
}

func lcm(a int, b int) int {
	return (a * b) / gcd(a, b)
}

func main() {
	var n int
	var m int
	var a []int
	fmt.Scan(&n)
	fmt.Scan(&m)
	lcmAll := 1
	for i := 0; i < n; i++ {
		var ai int
		fmt.Scan(&ai)
		a = append(a, ai/2)
		lcmAll = lcm(lcmAll, ai/2)
	}
	var ans int
	ans = (m/lcmAll + 1) / 2
	fmt.Println(ans)
}

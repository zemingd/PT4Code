package main

import (
	"fmt"
)

func gcd(a int64, b int64) int64 {
	if a < b {
		a, b = b, a
	}
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a int64, b int64) int64 {
	return (a * b) / gcd(a, b)
}

func main() {
	var n int
	var m int64
	fmt.Scan(&n)
	fmt.Scan(&m)
	lcmAll := int64(1)
	for i := 0; i < n; i++ {
		var ai int64
		fmt.Scan(&ai)
		lcmAll = lcm(lcmAll, ai/2)
		if lcmAll > m {
			fmt.Println(0)
			return
		}
	}
	var ans int64
	ans = (m/lcmAll + 1) / 2
	fmt.Println(ans)
}

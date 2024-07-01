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
	return (a / gcd(a, b)) * b
}

func main() {
	var n int
	var m int64
	fmt.Scan(&n)
	fmt.Scan(&m)
	lcmAll := int64(1)
	for i := 0; i < n; i++ {
		var a int64
		fmt.Scan(&a)
		b := a / 2
		if b%2 == 0 {
			fmt.Println(0)
			return
		}
		lcmAll = lcm(lcmAll, b)
		if lcmAll > m {
			fmt.Println(0)
			return
		}
	}
	var ans int64
	ans = (m/lcmAll + 1) / 2
	fmt.Println(ans)
}

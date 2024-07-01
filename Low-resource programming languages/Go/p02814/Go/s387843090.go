package main

import (
	"fmt"
)

func gcd(a int64, b int64) int64 {
	if a < b {
		a, b = b, a
	}
	for b > 0 {
		a, b = b, a%b
	}
	return a
}

func lcm(a int64, b int64) int64 {
	return (a / gcd(a, b)) * b
}

func main() {
	var n int
	var m int64
	fmt.Scan(&n)
	fmt.Scan(&m)
	var b []int64
	lcmAll := int64(1)
	for i := 0; i < n; i++ {
		var a int64
		fmt.Scan(&a)
		bi := a / 2
		b = append(b, bi)
		lcmAll = lcm(lcmAll, bi)
		if lcmAll > m {
			fmt.Println(0)
			return
		}
	}
	for i := 0; i < n; i++ {
		if (lcmAll/b[i])%2 == 0 {
			fmt.Println(0)
			return
		}
	}
	var ans int64
	ans = (m/lcmAll + 1) / 2
	fmt.Println(ans)
}

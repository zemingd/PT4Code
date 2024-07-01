package main

import (
	"fmt"
)

func pow(x int, y int64) int64 {
	ret := int64(1)
	for i := int64(0); i < y; i++ {
		ret *= int64(x)
	}
	return ret
}

func main() {
	var n int64
	fmt.Scan(&n)
	if n == 0 {
		fmt.Println(0)
		return
	}
	if (n%2 == 1) || (n < 10) {
		fmt.Println(0)
		return
	}

	m := n / 2
	ans := m / 5
	for i := int64(2); pow(5, i) <= m; i++ {
		ans += m / pow(5, i)
	}
	fmt.Println(ans)
}

package main

import (
	"fmt"
)

func solve(n int) int {
	// 奇数の場合、0を返す
	if n%2 == 1 {
		return 0
	}

	var res int
	n /= 2
	fmt.Println(n)

	for 0 < n {
		res += n / 5
		n /= 5
	}

	return res
}

func main() {
	var n int
	fmt.Scan(&n)

	fmt.Println(solve(n))
}

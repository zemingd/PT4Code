package main

import (
	"fmt"
)

func slove(n int) int {
	if n % 2 == 1 {
		return 0
	}

	var res int
	n /= 2
	for 0 < n {
		res += n / 5
		n /= 5
	}
	return res
}

func main() {
	var n int
	fmt.Scan(&n)
	
	fmt.Println(slove(n))
}

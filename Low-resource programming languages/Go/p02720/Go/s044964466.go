package main

import (
	"fmt"
)

func main() {
	var k int
	fmt.Scan(&k)

	i := 1
	n := 1
	ans := 0
	for i <= k {
		if (isLunlun(n)) {
			ans = n;
			i++
		}
		n++
	}

	fmt.Print(ans)
}

func isLunlun(n int) bool {
	if (n < 10) {
		return true
	}
	m := n / 10
	l := (n / 10) % 10
	if (abs(l - m) > 1) {
		return false
	}
	return isLunlun(m)
}

func abs(n int) int {
	if (n >= 0) {
		return n
	} else {
		return -n
	}
}

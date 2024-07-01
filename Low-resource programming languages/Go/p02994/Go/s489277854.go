package main

import (
	"fmt"
)

func main() {
	var n, l, ans int
	fmt.Scan(&n, &l)

	first := l
	last := l + n - 1

	if first >= 0 {
		for i := first + 1; i <= last; i++ {
			ans += i
		}
	} else if first < 0 && 0 <= last {
		for i := first; i <= last; i++ {
			ans += i
		}
	} else {
		for i := first; i < last; i++ {
			ans += i
		}
	}
	fmt.Println(ans)
}

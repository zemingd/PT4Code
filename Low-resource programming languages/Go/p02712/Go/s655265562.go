package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	ans := 0
	for i := 1; i <= n; i++ {
		if !(i%5 == 0 || i%3 == 0) {
			ans += i
		}
	}
	fmt.Println(ans)
}
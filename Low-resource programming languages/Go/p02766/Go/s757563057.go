package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	ans := 0
	for n > 0 {
		n /= k
		ans++
	}
	fmt.Println(ans)
}

package main

import (
	"fmt"
)

func main() {
	var a, b, ans int
	fmt.Scan(&a, &b)

	for _, n := range []int{1, 2, 3} {
		if n != a && n != b {
			ans = n
		}
	}

	fmt.Println(ans)
}

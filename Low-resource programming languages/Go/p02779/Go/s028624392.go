package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	seen := make(map[int]bool, n)
	var ans string = "YES"
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		if !seen[a] {
			seen[a] = true
		} else {
			ans = "NO"
			break
		}
	}
	fmt.Println(ans)
}

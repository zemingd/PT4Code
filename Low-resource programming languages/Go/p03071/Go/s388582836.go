package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	ans := 0
	for i := 0; i < 2; i++ {
		ans += max(a, b)
		if a < b {
			b--
		} else {
			a--
		}
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

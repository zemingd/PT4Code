package main

import "fmt"

func main() {
	var a, b, c, d int
	fmt.Scan(&a, &b, &c, &d)

	v1 := a * c
	v2 := a * d
	v3 := b * c
	v4 := b * d

	ans := max(v1, max(v2, max(v3, v4)))
	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

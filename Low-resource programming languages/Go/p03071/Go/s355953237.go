package main

import (
	"fmt"
)

func max(x, y int) int {
	var res int
	if x > y {
		res = x
	} else {
		res = y
	}
	return res
}

func main() {
	var A, B, ans int
	fmt.Scan(&A, &B)

	ans += max(A, B)

	if A == max(A, B) {
		A -= 1
	} else {
		B -= 1
	}

	ans += max(A, B)

	fmt.Println(ans)
}
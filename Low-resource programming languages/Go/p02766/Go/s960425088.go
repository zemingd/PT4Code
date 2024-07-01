package main

import (
	"fmt"
)

func solution(n, k int) int {
	var i int
	for n > 0 {
		n /= k
		i++
	}
	return i
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	fmt.Println(solution(n, k))
}

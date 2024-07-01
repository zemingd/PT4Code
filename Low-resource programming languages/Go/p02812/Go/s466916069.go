package main

import (
	"fmt"
)

func solution(n int, s string) int {
	var ans int
	for i := 0; i < n-2; i++ {
		if s[i:i+3] == "ABC" {
			ans++
		}
	}
	return ans
}

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	fmt.Println(solution(n, s))
}

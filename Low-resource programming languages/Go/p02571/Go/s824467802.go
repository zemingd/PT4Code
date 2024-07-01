package main

import (
	"fmt"
)

func min(i, j int) int {
	if i < j {
		return i
	}
	return j
}

func solve(s, t string) int {
	ans := len(t)
	
	for i := 0; i <= len(s) - len(t); i++ {
		diff := 0
		for j := 0; j < len(t); j++ {
			if t[j] != s[i+j] {
				diff++
			}
		}
		
		ans = min(ans, diff)
	}
	
	return ans
}

func main() {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)

	result := solve(s, t)
	fmt.Println(result)
}

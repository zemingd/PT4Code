package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	min_match := len(t)
	for i:=0; i <= len(s)-len(t); i++ {
		temp_min_match := 0
		for j:=0; j < len(t); j++ {
			if s[j+i] != t[j]{
				temp_min_match++
			}
		}
		min_match = min(min_match, temp_min_match)
	}
	fmt.Println(min_match)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
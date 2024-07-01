package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	ans := 10000

	for i := 0; i <= len(s)-len(t); i++ {
		c := 0
		for j := 0; j < len(t); j++ {
			if s[i+j] != t[j] {
				c++
			}
		}
		ans = min(ans, c)
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

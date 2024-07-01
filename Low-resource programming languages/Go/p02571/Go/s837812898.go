package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	var maxSubstrCount int
	for i := 0; i < len(s)-len(t)+1; i++ {
		var substrCount int
		for j := 0; j < len(t); j++ {
			if s[i+j] == t[j] {
				substrCount++
			}
		}
		if substrCount > maxSubstrCount {
			maxSubstrCount = substrCount
		}
	}
	fmt.Println(len(t) - maxSubstrCount)
}

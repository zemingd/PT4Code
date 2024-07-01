package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, longest int
	var s string
	fmt.Scan(&n, &s)
	for i := 0; i < n-1; i++ {
		for j := 1; i+j <= n/2+1; j++ {
			if strings.Index(s[i+j:], s[i:i+j]) != -1 {
				if j > longest {
					longest = j
				}
			}
		}
	}
	fmt.Println(longest)
}
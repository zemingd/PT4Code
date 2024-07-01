package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scanf("%d\n", &n)
	fmt.Scanf("%s\n", &s)

	count := 0
	for i := 0; i < n-2; i++ {
		for j := i + 1; j < n-1; j++ {
			if s[i] == s[j] {
				continue
			}
			for k := j + 1; k < n; k++ {
				if s[i] == s[k] || s[j] == s[k] {
					continue
				}
				if j-i != k-j {
					count++
				}
			}
		}
	}

	fmt.Printf("%v\n", count)
}

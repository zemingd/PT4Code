package main

import (
	"fmt"
)

func main() {
	var n int
	var s string

	c := 0

	fmt.Scanf("%d", &n)
	fmt.Scanf("%s", &s)

	iSharp := 0
	isSharp := false

	for i := 1; i < n-1; i++ {
		if s[i:i+1] == "#" {
			iSharp++
		}
	}

	if iSharp > n/2 {
		isSharp = true
	}

	for i := 1; i < n-2; i++ {
		if s[i:i+2] == "#." {
			c++
			if isSharp {
				s = s[:i] + "#" + s[i+1:]
			} else {
				s = s[:i] + "." + s[i+1:]
			}
		}
	}

	if s[0:2] == "#." {
		c++
	}
	if s[n-2:n] == "#." {
		c++
	}

	fmt.Println(c)
}

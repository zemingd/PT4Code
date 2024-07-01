package main

import (
	"fmt"
)

func main() {
	var n int
	var s string

	fmt.Scanf("%d", &n)
	fmt.Scanf("%s", &s)

	if n <= 1 {
		fmt.Println(0)
		return
	}

	start := 0
	end := n
	if s[0:2] == ".#" {
		start++
	}
	if s[n-2:n] == ".#" {
		end--
	}

	iSharp := 0
	iDot := 0
	sharpByte := "#"[0]

	isRequire := false

	for i := start; i < end; i++ {
		if !isRequire && i < end-1 && s[i:i+2] == "#." {
			isRequire = true
		}
		if isRequire {
			if s[i] == sharpByte {
				iSharp++
			} else {
				iDot++
			}
		}
	}

	if iSharp < iDot {
		fmt.Println(iSharp)
	} else {
		fmt.Println(iDot)
	}
}

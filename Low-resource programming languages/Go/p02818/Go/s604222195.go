package main

import (
	"fmt"
)

func main() {
	var cookiesT, cookiesA, k int
	fmt.Scan(&cookiesT, &cookiesA, &k)

	if cookiesT >= k {
		cookiesT -= k
	} else {
		cookiesA -= (k - cookiesT)
		cookiesT = 0
		if cookiesA < 0 {
			cookiesA = 0
		}
	}

	fmt.Print(cookiesT)
	fmt.Print(" ")
	fmt.Print(cookiesA)
	fmt.Println("")
}

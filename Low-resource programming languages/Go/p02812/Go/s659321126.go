package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	ans := 0
	for i := 0; i < n-3; i++ {
		if s[i:i+3] == "ABC" {
			ans++
		}
	}
	fmt.Println(ans)
}

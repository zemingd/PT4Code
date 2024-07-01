package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	n = n - n%3
	ans := 0
	for i := 0; i < n; i++ {
		if string(s[i]) == "A" && string(s[i+1]) == "B" &&
			string(s[i+2]) == "C" {
			ans++
		}
	}
	fmt.Println(ans)
}

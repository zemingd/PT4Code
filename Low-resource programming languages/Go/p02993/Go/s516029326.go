package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	var ans = "Good"
	for i := 0; i < 3; i++ {
		if s[i] == s[i+1] {
			ans = "Bad"
		}
	}
	fmt.Println(ans)
}

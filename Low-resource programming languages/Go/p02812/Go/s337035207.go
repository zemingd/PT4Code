package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	count := 0
	for i := 0; i < n; i++ {
		str := string([]rune(s)[i : i+3])
		if str == "ABC" {
			count++
		}
	}
	fmt.Println(count)
}

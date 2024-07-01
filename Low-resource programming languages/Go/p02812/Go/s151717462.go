package main

import (
	"fmt"
)

func main() {
	var (
		n   int
		str string
	)
	fmt.Scan(&n, &str)

	count := 0
	for i := 0; i <= n-3; i++ {
		if str[i:i+3] == "ABC" {
			count++
		}
	}
	fmt.Println(count)
}

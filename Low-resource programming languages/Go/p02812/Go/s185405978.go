package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s string

	fmt.Scan(&n)
	fmt.Scan(&s)
	sSlice := strings.Split(s, "")
	result := 0

	for i := 0; i < n-2; i++ {
		if strings.Join(sSlice[i:i+3], "") == "ABC" {
			result = result + 1
		}
	}
	fmt.Println(result)
}

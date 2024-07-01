package main

import (
	"fmt"
)

func main() {
	var a string
	var b string
	fmt.Scan(&a)
	fmt.Scan(&b)

	count := len([]rune(a))
	result := 0
	for i := 0; i < count; i++ {
		if a[i] != b[i] {
			result++
		}
	}
	fmt.Println(result)
}

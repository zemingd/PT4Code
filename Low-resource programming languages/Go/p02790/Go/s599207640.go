package main

import (
	"fmt"
	"strconv"
)

func main() {
	var (
		a, b   int
		result string
	)
	fmt.Scan(&a, &b)

	if a > b {
		for i := 0; i < a; i++ {
			result += strconv.Itoa(b)
		}
	} else {
		for i := 0; i < b; i++ {
			result += strconv.Itoa(a)
		}
	}
	fmt.Println(result)
}

package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	min := 1000
	for i := 0; i < len(s)-2; i++ {
		n, _ := strconv.Atoi(s[i : i+3])
		d := abs(n - 753)
		if d < min {
			min = d
		}
	}
	fmt.Println(min)
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

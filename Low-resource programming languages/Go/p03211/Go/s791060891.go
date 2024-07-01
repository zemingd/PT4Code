package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	x := 9999999
	for i := 0; i < len(s)-2; i++ {
		tmp, _ := strconv.Atoi(s[i : i+3])
		tmpx := abs(tmp - 753)
		if tmpx < x {
			x = tmpx
		}
	}
	fmt.Println(x)
}

func abs(n int) int {
	if n < 0 {
		n = 0 - n
	}
	return n
}

package main

import (
	"fmt"
	"strconv"
)

func Amin(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func maxLen(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func main() {
	var n int
	var min int = 10000000000
	fmt.Scan(&n)
	for i := 1; i <= Amin(n, 100000); i++ {
		is := strconv.Itoa(i)
		if n%i == 0 {
			j := n / i
			js := strconv.Itoa(j)
			f := maxLen(len(is), len(js))
			if f < min {
				min = f
			}
		}
	}
	fmt.Println(min)
}

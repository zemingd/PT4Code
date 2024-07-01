package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var s string
	fmt.Scanln(&s)

	min := 1000
	for i := 0; i < len(s)-2; i++ {
		n, _ := strconv.Atoi(s[i : i+3])
		diff := int(math.Abs(float64(n - 753)))
		if diff < min {
			min = diff
		}
	}

	fmt.Println(min)
}

package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	var diff float64 = 1000
	for i := 0; i <= len(s)-3; i++ {
		num, _ := strconv.Atoi(s[i : i+3])
		if diff > math.Abs(float64(753-num)) {
			diff = math.Abs(float64(753 - num))
		}
	}
	fmt.Println(diff)
}

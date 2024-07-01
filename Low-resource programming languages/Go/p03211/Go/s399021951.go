package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	fmt.Println(minimum(s))
}

const favNum = 753

func minimum(s string) int {
	var minimum int
	for i := 0; i < len(s)-2; i++ {
		threeNums, _ := strconv.Atoi(s[i : i+3])
		diff := int(math.Abs(float64(favNum - threeNums)))
		if i == 0 {
			minimum = diff
		}
		if diff < minimum {
			minimum = diff
		}
	}
	return minimum
}

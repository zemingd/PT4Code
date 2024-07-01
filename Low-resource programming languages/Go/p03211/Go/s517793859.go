package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	min := 10000000000
	for i := 0; i < len(s)-2; i++ {
		str := s[i : i+3]
		n, _ := strconv.Atoi(str)

		m := int(math.Abs(float64(753 - n)))
		if m < min {
			min = m
		}
	}

	fmt.Println(min)
}

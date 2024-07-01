package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	min := calcDiff(s[0:3])
	for i := 1; i < len(s)-2; i++ {
		diff := calcDiff(s[i : i+3])
		if diff < min {
			min = diff
		}
	}
	fmt.Println(min)
}

func calcDiff(s string) int {
	x, err := strconv.Atoi(s)
	if err != nil {
		panic(err)
	}

	diff := float64(753 - x)
	return int(math.Abs(diff))
}
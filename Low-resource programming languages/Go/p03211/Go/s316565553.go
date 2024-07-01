package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	// Code for B - 754
	var S string
	fmt.Scanf("%s", &S)
	var min int = 1000
	var number int
	for i := 0; i < len(S)-2; i++ {
		number, _ = strconv.Atoi(S[i : i+3])
		if min > int(math.Abs(float64(number-753))) {
			min = int(math.Abs(float64(number - 753)))
		}

	}

	fmt.Println(min)
}

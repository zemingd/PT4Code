package main

import (
	"fmt"
	"math"
	"strconv"
)

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return (-a)
}

func main() {
	var S string
	fmt.Scan(&S)
	mind := math.MaxInt32
	for i := 0; i < len(S); i++ {
		for j := i + 1; j < len(S)+1; j++ {
			k, _ := strconv.Atoi(S[i:j])
			d := abs(753 - k)
			if mind > d {
				mind = d
			}
		}
	}
	fmt.Println(mind)
}

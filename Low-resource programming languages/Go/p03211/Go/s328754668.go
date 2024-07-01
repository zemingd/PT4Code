package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	var n = len(s)
	var minDif = 10000000
	for i := 0; i < n-2; i++ {
		var m, _ = strconv.Atoi(s[i : i+3])
		if minDif > int(math.Abs(float64(753-m))) {
			minDif = int(math.Abs(float64(753 - m)))
		}
	}
	fmt.Println(minDif)
}

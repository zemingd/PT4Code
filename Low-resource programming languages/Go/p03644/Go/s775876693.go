package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	fmt.Scan(&N)

	count := 0
	for {
		if float64(N) < math.Pow(2.0,float64(count)) {
			count -= 1
			break
		}
		count++
	}
	fmt.Println(count)
}

package main

import (
	"fmt"
	"math"
)

func main() {
	var s string
	fmt.Scan(&s)

	countOdd := 0
	countEven := 0
	for i := range s {
		if i%2 == 0 {
			if s[i] == '0' {
				countOdd++
			}
		} else {
			if s[i] == '1' {
				countOdd++
			}

		}
	}
	for i := range s {
		if i%2 == 0 {
			if s[i] == '1' {
				countEven++
			}
		} else {
			if s[i] == '0' {
				countEven++
			}
		}
	}

	fmt.Println(math.Min(float64(countOdd), float64(countEven)))
}

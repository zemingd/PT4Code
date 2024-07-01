package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	min := math.MaxInt64
	for i := 1; i*i <= n; i++ {
		if n%i == 0 {
			ans := f(i, n/i)
			if ans < min {
				min = ans
			}
		}
	}
	fmt.Println(min)
}

func f(a, b int) int {
	al := len(strconv.Itoa(a))
	bl := len(strconv.Itoa(b))
	if al > bl {
		return al
	}
	return bl
}

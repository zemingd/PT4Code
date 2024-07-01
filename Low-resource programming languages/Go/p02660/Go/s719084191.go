package main

import (
	"fmt"
	"math"
)

func main() {
	var n int64
	fmt.Scan(&n)
	l := int64(math.Sqrt(float64(n))) + 1
	c := 0
	for i := int64(2); i <= l && n != 1; i++ {
		if n%i == 0 {
			n /= i
			c++
		}
	}
	if c == 0 && n > 1 {
		c = 1
	}
	fmt.Println(c)
}

package main

import (
	"fmt"
)

var debug = false

func main() {
	var a, b, c, x int
	fmt.Scanf("%d", &a)
	fmt.Scanf("%d", &b)
	fmt.Scanf("%d", &c)
	fmt.Scanf("%d", &x)
	res := GetAnswer(a, b, c, x)
	fmt.Printf("%v\n", res)
}

// GetAnswer ...
func GetAnswer(a, b, c, x int) int {
	prt("inputs: a:%d, b:%d, c:%d, x:%d\n", a, b, c, x)
	a500 := a
	if 500*a > x {
		a500 = x / 500
	}
	b100 := b
	if 100*b > x {
		b100 = x / 100
	}
	c50 := c
	if 50*c > x {
		c50 = x / 50
	}
	result := 0
	for i := 0; i <= a500; i++ {
		for j := 0; j <= b100; j++ {
			for k := 0; k <= c50; k++ {
				total := (500 * i) + (100 * j) + (50 * k)
				prt("loop count a:%d b:%d c:%d total:%d\n", i, j, k, total)
				if total == x {
					result++
				}
			}
		}
	}
	prt("%v\n", result)
	return result
}

func prt(format string, inputs ...interface{}) {
	if debug {
		fmt.Printf(format, inputs...)
	}
}
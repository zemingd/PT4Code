package main

import (
	"fmt"
	"strconv"
)

func output(a, b, c, d int, i, j, k int) {
	fmt.Print(a)
	switch {
	case i == 1:
		fmt.Print("+")
	default:
		fmt.Print("-")
	}
	fmt.Print(b)
	switch {
	case j == 1:
		fmt.Print("+")
	default:
		fmt.Print("-")
	}
	fmt.Print(c)
	switch {
	case k == 1:
		fmt.Print("+")
	default:
		fmt.Print("-")
	}
	fmt.Print(d)
	fmt.Println("=7")
}

func main() {
	var n, a, b, c, d int
	var s string
	fmt.Scan(&s)
	n, _ = strconv.Atoi(s)
	a = (n / 1000) % 10
	b = (n / 100) % 10
	c = (n / 10) % 10
	d = (n / 1) % 10

	for i := 1; i >= -1; i -= 2 {
		res1 := a + (b * i)
		for j := 1; j >= -1; j -= 2 {
			res2 := res1 + (c * j)
			for k := 1; k >= -1; k -= 2 {
				res3 := res2 + (d * k)
				if res3 == 7 {
					output(a, b, c, d, i, j, k)
					return
				}
			}
		}
	}
}

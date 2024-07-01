package main

import "fmt"
import "math"

func main() {
	var a, b, c int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	var res bool

	left_top := a + b - c

	if left_top > 0 {
		res = true
	} else {
		left := int(math.Pow(float64(left_top), float64(2)))
		right := a * b * 4
		// fmt.Println(left)
		// fmt.Println(right)

		res = left > right
	}

	if res {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

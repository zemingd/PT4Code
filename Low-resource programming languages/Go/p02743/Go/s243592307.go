package main

import "fmt"
import "math"

func main() {
	var a, b, c float64
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	var res bool

	left_top := a + b - c

	if left_top > 0 {
		res = true
	} else {
		left := math.Pow(left_top, float64(2)) / 4
		right := a * b
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

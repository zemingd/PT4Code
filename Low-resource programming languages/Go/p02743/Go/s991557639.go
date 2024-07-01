package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	// A := complex(float64(a), 2)
	// B := complex(float64(b), 2)
	// C := complex(float64(c), 2)

	// // A := math.Sqrt(float64(a))
	// // B := math.Sqrt(float64(b))
	// // C := math.Sqrt(float64(c))
	// res := "No"
	// if real(A)+real(B) < real(C) {

	// 	res = "Yes"
	// }
	// fmt.Println(res)

	d := c - a - b
	res := "No"
	if d > 0 && d*d > 4*a*b {
		res = "Yes"
	}
	fmt.Println(res)
}

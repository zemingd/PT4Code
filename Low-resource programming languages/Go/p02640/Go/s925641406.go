package main

import "fmt"
import "math"

func main() {
	var X, Y float64
	fmt.Scan(&X, &Y)

	var condX, condY float64

	condX = (4*X - Y) / 2.
	condY = (Y - 2*X) / 2.

	//fmt.Println(condX, condY)

	if condX >= 0 && condY >= 0 {
		if math.Floor(condX) == condX && math.Floor(condY) == condY {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	} else {
		fmt.Println("No")
	}
}

package main

import (
	"fmt"
	"math"
)

//Ansabs is good
func Ansabs(X, Y int) int {
	ABS := math.Abs(float64(X - Y))
	return int(ABS)
}

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	var Ans1, Ans2 int
	i := 0
	for {
		Ans1 = Ansabs(N, K)
		Ans2 = Ansabs(Ans1, K)

		if i == 0 {
			if N < Ans1 {
				fmt.Println(N)
				break
			}
		}

		if Ans1 < Ans2 {
			fmt.Println(Ans1)
			break
		}
		N = Ans1
		i++
	}
}
package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64
	fmt.Scanf("%v %v %v", &a, &b, &c)

	ans := math.Sqrt(a) + math.Sqrt(b) < math.Sqrt(c)
	if ans {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}

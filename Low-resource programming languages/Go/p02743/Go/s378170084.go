package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64
	fmt.Scan(&a, &b, &c)

	if a > b && (a-b < math.Sqrt(c)*(math.Sqrt(a)-math.Sqrt(b))) || a < b && (a-b > math.Sqrt(c)*(math.Sqrt(a)-math.Sqrt(b))) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

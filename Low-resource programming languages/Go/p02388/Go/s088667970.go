package main

import (
	"fmt"
	"math"
)

func main() {
	var x, powX float64
	fmt.Scan(&x)
	powX = math.Pow(x, 3)
	fmt.Println(int(powX))
}
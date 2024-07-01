package main

import (
	"fmt"
	"math"
)

func main() {
	var a int
	fmt.Scanf("%d", &a)
	fmt.Print(int(3* math.Pow(float64(a),2)))
}
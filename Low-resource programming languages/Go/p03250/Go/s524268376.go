package main

import (
	"fmt"
	"math"
)

func main() {
	var a,b,c float64
	fmt.Scan(&a,&b,&c)

	fmt.Println(math.Max(10 * a + b + c,math.Max(10 * b + a + c,10 * c + a + b)))
}
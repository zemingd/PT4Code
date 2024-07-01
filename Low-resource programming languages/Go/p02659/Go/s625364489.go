package main

import (
	"fmt"
	"math"
)

func main() {

	var a float64
	var b float64
	fmt.Scan(&a, &b)

	result := a * b

	//fmt.Println(result)
	fmt.Println(int(math.Floor(result)))

}

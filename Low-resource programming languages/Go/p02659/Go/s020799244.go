package main

import (
	"fmt"
	"math"
)

func main() {

	var a int
	var b float64
	fmt.Scan(&a, &b)

	result := float64(a) * b

	//fmt.Println(result)
	fmt.Println(int(math.Floor(result)))

}

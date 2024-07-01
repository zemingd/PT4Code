package main

import (
	"fmt"
	"math"
)

func main()  {
	var A int
	var B float64
	fmt.Scan(&A, &B)

	fmt.Println(int(math.Floor(float64(A) * B)))
}

package main

import (
	"fmt"
)

func main() {
	var k, x int
	fmt.Scanf("%d %d", &k, &x)

	var coordinates []int
	for i := k * (-1); i <= k-2; i++ {
		coordinates = append(coordinates, x+i+1)
	}

	for _, v := range coordinates {
		fmt.Printf("%d ", v)
	}
}

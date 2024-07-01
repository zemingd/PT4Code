package main

import (
	"fmt"
)

func main() {
	var k, x int
	fmt.Scanf("%d %d", &k, &x)

	var list []int
	for i := x - k + 1; i < x+k; i++ {

		list = append(list, i)
	}

	fmt.Println(list)
}


package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	ar := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	sum := 0
	for _, v := range ar {
		sum += v - 1
	}
	fmt.Println(sum)
}

package main

import (
	"fmt"
)

func main() {
	var n int
	var a []int
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		var i int
		fmt.Scan(&i)
		a = append(a, i)
	}

	sum := 0
	for _, v := range a {
		sum += v - 1
	}
	fmt.Println(sum)
}

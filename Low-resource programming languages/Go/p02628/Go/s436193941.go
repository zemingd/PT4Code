package main

import (
	"fmt"
	"sort"
)

// go run ./main.go < in

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	var prices []int
	for i := 0; i < a; i++ {
		var x int
		fmt.Scan(&x)
		prices = append(prices, x)
	}

	sort.Sort(sort.IntSlice(prices))

	sum := 0
	for _, v := range prices[:b] {
		sum += v
	}
	fmt.Println(sum)

}

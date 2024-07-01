package main

import "fmt"

func main() {
	var k, x int
	fmt.Scan(&k, &x)

	min := x - k + 1
	var result []int
	for ; min < x+k; min++ {
		result = append(result, min)
	}
	fmt.Println(result)
}

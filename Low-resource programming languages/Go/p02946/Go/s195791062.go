package main

import (
	"fmt"
	"strconv"
)

func main() {
	var k, x int
	fmt.Scan(&k, &x)

	min := x - k + 1
	var result []int
	for ; min < x+k; min++ {
		result = append(result, min)
	}

	for _, v := range result {
		fmt.Printf("%s ", strconv.Itoa(v))
	}
}

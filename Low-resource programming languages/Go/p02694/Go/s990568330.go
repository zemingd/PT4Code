package main

import (
	"fmt"
)

func main() {
	fmt.Println()
	var x int
	fmt.Scan(&x)
	fmt.Println(profit(x))
}

func profit(x int) int {
	count := 0
	for i:=100;i < x;{
	i += i/100
	count ++
	}
	return count
}

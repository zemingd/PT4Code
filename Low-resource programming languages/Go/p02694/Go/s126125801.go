package main

import (
	"fmt"
)

func main() {
	fmt.Println()
	var x int
	fmt.Scan(&x)
	x = 105
	fmt.Println(profit(x))
}

func profit(x int) int {
	count := 0
	for i:=float64(100);i < float64(x);{
		fmt.Println(i)
	add := (i * 1.01) - 100
	fmt.Println(i,"ee")
	i = float64(int(add)) +100
	count ++
	}
	return count
}

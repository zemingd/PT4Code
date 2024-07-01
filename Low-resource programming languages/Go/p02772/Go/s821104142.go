package main

import (
	"fmt"
)

func main() {
	var N int
	var value int
	var j int = 0

	fmt.Scanln(&N)
	var evenList = make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&value)
		if value%2 == 0 {
			evenList[j] = value
			j++
		}
	}
	count := 0
	for i := 0; i < j; i++ {
		if evenList[i]%3 == 0 || evenList[i]%5 == 0 {
			count++
		} else {
			fmt.Println("DENIED")
			break
		}
	}
	if count == j {
		fmt.Println("APPROVED")
	}
}

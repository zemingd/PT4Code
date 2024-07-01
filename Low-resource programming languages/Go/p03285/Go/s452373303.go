package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	
	cPrice := 4
	dPrice := 7
	
	cMax := 100 / cPrice
	dMax := 100 / dPrice
	
	judge := "No"
	for c := 0; c <= cMax; c++ {
		for d := 0; d <= dMax; d++ {
			if c * cPrice + d * dPrice == N {
				judge = "Yes"
			}
		}
	}
	fmt.Println(judge)
}
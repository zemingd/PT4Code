package main

import (
	"fmt"
)

func solve(l int) bool {
	return l >= 30
}

func main() {
	var N int
	fmt.Scan(&N)
	
	result := solve(N)
	if result {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

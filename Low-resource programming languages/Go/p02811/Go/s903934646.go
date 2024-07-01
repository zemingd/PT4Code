package main

import (
	"fmt"
)

func solution(k, x int) bool {
	return 500*k >= x
}

func main() {
	var k, x int
	fmt.Scan(&k, &x)
	if solution(k, x) {
		fmt.Println("Yes")
	}
	fmt.Println("No")
}

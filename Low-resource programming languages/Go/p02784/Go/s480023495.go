package main

import (
	"fmt"
)

func main() {
	var H int
	var N int
	var buf int
	sm := 0

	fmt.Scan(&H)
	fmt.Scan(&N)
	for i := 0; i < N; i++ {
		fmt.Scan(&buf)
		sm += buf
	}
	if sm >= H {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

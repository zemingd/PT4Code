package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	ans := a - 1
	if a <= b {
		ans++
	}
	fmt.Println(ans)
}

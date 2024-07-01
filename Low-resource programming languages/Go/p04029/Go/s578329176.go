package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	ans := N * (N + 1) / 2
	fmt.Println(ans)
}
package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)

	if n == m {
		fmt.Printf("Yes\n")
	} else {
		fmt.Printf("No\n")
	}
}

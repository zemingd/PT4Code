package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	if n == m {
		fmt.Println("Yes")
		return
	}

	fmt.Println("No")
}

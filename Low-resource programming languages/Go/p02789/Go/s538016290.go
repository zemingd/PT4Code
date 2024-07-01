package main

import (
	"fmt"
)

func main() {

	n := 0
	m := 0
	fmt.Scan(&n)
	fmt.Scan(&m)
	if n == m {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}

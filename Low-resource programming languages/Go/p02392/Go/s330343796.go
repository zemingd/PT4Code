package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	if a < b && b < c {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}


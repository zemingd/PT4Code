package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	if (a == b && a != c) ||
		(b == c && a != b) ||
		(c == a && a != b) {
		fmt.Println("Yes")
		return
	}

	fmt.Println("No")
}

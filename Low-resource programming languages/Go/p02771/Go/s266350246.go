package main

import (
	"fmt"
)

func main() {
	var a, b, c int

	fmt.Scan(&a, &b, &c)

	if a == b && b == c {
		fmt.Println("NO")
	} else if a == b || b == c || c == a {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

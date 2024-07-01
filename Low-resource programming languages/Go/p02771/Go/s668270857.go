package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	if a == b && b == c {
		fmt.Printf("No")
	} else if a == b || b == c || c == a {
		fmt.Printf("Yes")
	} else {
		fmt.Printf("No")
	}

}

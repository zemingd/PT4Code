package main

import (
	"fmt"
)

func main() {
	var d, s, t int
	fmt.Scan(&d, &s, &t)

	if (s * t) >= d {
		fmt.Printf("Yes")
	} else {
		fmt.Printf("No")
	}
}

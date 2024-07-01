package main

import (
	"fmt"
)

func main() {
	var X int
	fmt.Scan(&X)

	if X >= 30 {
		fmt.Printf("Yes\n")
	} else {
		fmt.Printf("No\n")
	}
}

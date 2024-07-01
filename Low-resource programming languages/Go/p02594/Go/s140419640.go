package main

import (
	"fmt"
)

func main() {
	var a int
	fmt.Scanf("%d", &a)
	if a >= 30 {
		fmt.Printf("Yes\n")
	} else {
		fmt.Printf("No\n")
	}
}

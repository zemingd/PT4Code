package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	if n % 4 == 0 || n % 7 == 0 || n % 11 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
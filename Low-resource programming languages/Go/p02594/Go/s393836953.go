package main

import (
	"fmt"
)

func main() {
	var a int
	fmt.Scan(&a)

	for a >= 30{
		fmt.Println("Yes")
		return

	}
	fmt.Println("No")
}

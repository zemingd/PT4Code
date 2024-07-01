package main

import "fmt"

func main() {

	var a, b int
	fmt.Scan(&a, &b)

	if a < b {
		fmt.Println(0)
	} else if a >= b {
		fmt.Println(10)
	}
}

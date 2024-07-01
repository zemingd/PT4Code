package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	if a == b {
		fmt.Println(a + b)
	} else if a > b {
		fmt.Println(a*2 - 1)
	} else {
		fmt.Println(b*2 - 1)
	}
}

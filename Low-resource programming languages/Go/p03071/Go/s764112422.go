package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	if a > b {
		fmt.Println(2*a - 1)
		return
	}
	if a < b {
		fmt.Println(2*b - 1)
		return
	}
	fmt.Println(2 * a)
}

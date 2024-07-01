package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	switch {
	case a < 5:
		fmt.Println("0")
	case a <= 12:
		fmt.Println(b / 2)
	default:
		fmt.Println(b)
	}
}

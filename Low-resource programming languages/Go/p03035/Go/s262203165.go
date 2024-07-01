package main

import "fmt"

func main() {
	var n, b int
	fmt.Scan(&n)
	fmt.Scan(&b)

	switch {
	case n < 6:
		fmt.Println(0)
	case n >= 6 && n <= 12:
		fmt.Println(b / 2)
	default:
		fmt.Println(b)
	}
}

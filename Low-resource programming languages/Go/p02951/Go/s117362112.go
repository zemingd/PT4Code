package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	result := c - (a - b)
	if result > 0 {
		fmt.Println(result)
	} else {
		fmt.Println(0)
	}
}

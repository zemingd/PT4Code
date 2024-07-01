package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	var cost int

	if a <= 5 {
		cost = 0
	} else if a <= 12 {
		cost = b / 2
	} else {
		cost = b
	}

	fmt.Println(cost)
}

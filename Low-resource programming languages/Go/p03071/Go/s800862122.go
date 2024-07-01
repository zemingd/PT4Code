package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	max, min := 0, 0
	if a > b {
		max, min = a, b
	} else {
		max, min = b, a
	}
	diff := max - min
	switch {
	case diff == 0:
		fmt.Println(2 * max)
	default:
		fmt.Println(max + (max - 1))
	}
}

package main

import "fmt"

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	total := 0
	if a > b {
		total += a
		a--
	} else {
		total += b
		b--
	}

	if a > b {
		total += a
		a--
	} else {
		total += b
		b--
	}
	fmt.Printf("%d", total)
}
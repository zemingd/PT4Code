package main

import "fmt"

func isOdd(x int) bool {
	return x%2 != 0
}

func main() {
	var h, w int
	fmt.Scan(&h)
	fmt.Scan(&w)

	if isOdd(w) {
		if isOdd(h) {
			fmt.Println((h / 2 * w) + (w/2 + 1))
		} else {
			fmt.Println(h / 2 * w)
		}
	} else {
		fmt.Println((w / 2) * h)
	}
}

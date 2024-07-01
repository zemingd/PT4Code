package main

import "fmt"

func min(x int, y int) int {
	if x > y {
		return y
	} else {
		return x
	}
}

func max(x int, y int) int {
	if x < y {
		return y
	} else {
		return x
	}
}

func sortThreeNumber(a int, b int, c int) (int, int, int) {
	minimum := min(min(a, b), c)
	maximum := max(max(a, b), c)
	middle := 0

	if a == minimum && b == maximum {
		middle = c
	} else if a == minimum && c == maximum {
		middle = b
	} else if b == minimum && a == maximum {
		middle = c
	} else if c == minimum && a == maximum {
		middle = b
	} else {
		middle = a
	}

	return minimum, middle, maximum
}

func main() {
	var a, b, c int

	fmt.Scan(&a, &b, &c)
	fmt.Println(sortThreeNumber(a, b, c))
}


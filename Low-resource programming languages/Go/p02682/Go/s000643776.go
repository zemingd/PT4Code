package main

import "fmt"

func main() {
	var a, b, c, k int
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &k)

	aCount := min(a, k)
	bCount := min(b, k-aCount)
	cCount := min(c, k-aCount-bCount)

	fmt.Println(aCount - cCount)
}

func min(first, second int) int {
	if first < second {
		return first
	}

	return second
}

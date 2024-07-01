package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var digit int
	for m := k; ; m *= k {
		if n < m {
			digit = l + 1
			break
		}
	}

	fmt.Print(digit)
}

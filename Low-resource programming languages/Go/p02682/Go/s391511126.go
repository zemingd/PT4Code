package main

import "fmt"

func main() {
	var a, b, c, k int
	fmt.Scan(&a, &b, &c, &k)
	if a + b >= k {
		fmt.Print(a)
	} else {
		fmt.Print((k - a - b) * -1 + a)
	}
}

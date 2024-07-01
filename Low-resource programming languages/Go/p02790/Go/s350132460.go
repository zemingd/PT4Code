package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)
	n := a
	p := b

	if a < b {
		n, p = b, a
	}
	for i := 0; i < n; i++ {
		fmt.Print(p)
	}
}

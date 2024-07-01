package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)
	rest := n % (a + b)
	blue := (n / (a + b)) * a
	if rest <= a {
		blue += rest
	} else {
		blue += a
	}
	fmt.Println(blue)
}
